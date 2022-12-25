// Flutter imports:
import 'package:escape_from_me/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class FirstStage extends StatelessWidget {
  const FirstStage({super.key});
  final double _width = 200;
  final double _height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page0'),
      ),
      body: Center(child: Assets.images.room.svg(width: 500, height: 1000)),
    );
  }
}
