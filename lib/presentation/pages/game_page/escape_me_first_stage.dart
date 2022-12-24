// Flutter imports:
import 'package:escape_from_me/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class FirstStage extends StatelessWidget {
  const FirstStage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page0'),
      ),
      body: Center(child: Assets.images.firstStageOpen.image()),
    );
  }
}
