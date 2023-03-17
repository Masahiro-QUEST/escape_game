// Flutter imports:
import '../../../gen/assets.gen.dart';
import 'package:battery_plus/battery_plus.dart';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

Artboard? _riveArtboard;
StateMachineController? _controller;
SMIInput<bool>? _isCharge;

/// Is the animation currently playing?
bool _isPlaying = false;

class FourthStage extends StatefulWidget {
  const FourthStage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _BatteryPageState createState() => _BatteryPageState();
}

class _BatteryPageState extends State<FourthStage> {
  int BattLevel = 0;

  //バッテリーのインスタンスを取得
  final Battery _battery = Battery();

  //バッテリーの状態(充電中等)をStateとして保持
  BatteryState? _batteryState;
  //StreamSubscriptionで監視する（初期化はinitStateで行う）
  StreamSubscription<BatteryState>? _batteryStateSubscription;

  @override
  void initState() {
    super.initState();

    rootBundle.load(Assets.animation.chargeDoor).then(
      (data) async {
        // Load the RiveFile from the binary data.
        final file = RiveFile.import(data);

        // The artboard is the root of the animation and gets drawn in the
        // Rive widget.
        final artboard = file.mainArtboard;
        var controller = StateMachineController.fromArtboard(artboard, 'Door');
        if (controller != null) {
          artboard.addController(controller);
          _isCharge = controller.findInput('isCharge');
        }
        setState(() => _riveArtboard = artboard);
      },
    );

    //Batteryの状態の変化を検知し、setStateするように設定
    _batteryStateSubscription =
        _battery.onBatteryStateChanged.listen((BatteryState state) {
      setState(() {
        _batteryState = state;
        getBattLevel();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills Machine'),
      ),
      body: Center(
        child: _riveArtboard == null
            ? const SizedBox()
            : Stack(
                children: [
                  Positioned.fill(
                    child: Rive(
                      artboard: _riveArtboard!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    bottom: 32,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          child: const Text('Charge'),
                          onPressed: () => _isCharge?.value = true,
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          child: const Text('Discharge'),
                          onPressed: () => _isCharge?.value = false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    //Subscriptionのストップ
    if (_batteryStateSubscription != null) {
      _batteryStateSubscription!.cancel();
    }
  }

  Color selectColor(String state) {
    switch (state) {
      case "BatteryState.charging":
        return Colors.green;
      case "BatteryState.discharging":
        return Colors.red;
      default:
        return Colors.yellow;
    }
  }

  Future<void> getBattLevel() async {
    BattLevel = await _battery.batteryLevel;
    print(BattLevel);
  }
}
