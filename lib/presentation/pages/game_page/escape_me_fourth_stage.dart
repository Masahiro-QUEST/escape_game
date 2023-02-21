// Flutter imports:
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../../../gen/assets.gen.dart';
import 'package:battery_plus/battery_plus.dart';
import 'dart:ffi';
import 'dart:async';

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
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //バッテリーの状態を表示
            Text("$BattLevel"),
            Container(
              width: 100,
              height: 100,
              color: selectColor('$_batteryState'),
            )
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
