// Flutter imports:
import 'package:flutter/material.dart';

class SecondStage extends StatelessWidget {
  const SecondStage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page1'),
      ),
      body: const Center(
        child: Text("次のステージ"),
      ),
    );
  }
}