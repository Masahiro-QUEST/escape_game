// Flutter imports:
import 'package:escape_from_me/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class FirstStage extends StatelessWidget {
  const FirstStage({super.key});
  final double _width = 100;
  final double _height = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page0'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          width: _width,
          height: _height,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Assets.images.firstStageOpen.image(),
          ),
        ),
      ),
    );
  }
}
