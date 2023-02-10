// Flutter imports:
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../../../gen/assets.gen.dart';

class SecondStage extends StatelessWidget {
  const SecondStage({super.key});

  @override
  Widget build(BuildContext context) {
    String str = Assets.animation.keyVault;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second stage"),
      ),
      body: GestureDetector(
        child: Center(
          child: RiveAnimation.asset(Assets.animation.keyVault),
        ),
      ),
    );
  }
}
