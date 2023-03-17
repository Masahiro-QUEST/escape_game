// Flutter imports:
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../../../gen/assets.gen.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class SecondStage extends StatefulWidget {
  const SecondStage({Key? key}) : super(key: key);

  @override
  _SecondStageState createState() => _SecondStageState();
}

class _SecondStageState extends State<SecondStage> {
  Artboard? _riveArtboard;
  StateMachineController? _controller;
  SMIInput<bool>? _isCorrect;
  bool _isCorrectPassword = false;

  @override
  void initState() {
    super.initState();

    rootBundle.load(Assets.animation.keyVault).then(
      (data) async {
        // Load the RiveFile from the binary data.
        final file = RiveFile.import(data);

        // The artboard is the root of the animation and gets drawn in the
        // Rive widget.
        final artboard = file.mainArtboard;
        var controller = StateMachineController.fromArtboard(artboard, 'Vault');
        if (controller != null) {
          artboard.addController(controller);
          _isCorrect = controller.findInput('isCollect');
        }
        setState(() => _riveArtboard = artboard);
      },
    );
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
                ],
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show a dialog with a text field to enter the password.
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text("Enter password"),
              content: TextField(
                obscureText: true,
                onChanged: (password) {
                  // Check if the password is correct.
                  setState(() {
                    _isCorrectPassword = (password == "0");
                    _isCorrect?.value = _isCorrectPassword;
                  });
                },
              ),
            ),
          );
        },
        child: const Icon(Icons.lock),
      ),
    );
  }
}
