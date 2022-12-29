// Flutter imports:
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SecondStage extends StatelessWidget {
  const SecondStage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page1'),
      ),
      body: GestureDetector(
        child: const Center(
          child: RiveAnimation.asset("assets/animation/key_rock_slide.riv"),
        ),
      ),
    );
  }
}
