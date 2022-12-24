// Flutter imports:
import 'package:flutter/material.dart';

class ThirdStage extends StatelessWidget {
  const ThirdStage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page3'),
      ),
      body: const Center(
        child: Text("3つ目のステージ"),
      ),
    );
  }
}
