// Flutter imports:
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../../../gen/assets.gen.dart';

class FourthStage extends StatelessWidget {
  const FourthStage({super.key});

  @override
  Widget build(BuildContext context) {
    String str = Assets.animation.keyVault;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fourth Stage"),
      ),
      body: GestureDetector(
        child: Center(
          child: RiveAnimation.asset(Assets.animation.keyRockSlide),
        ),
      ),
    );
  }
}
