// Flutter imports:
import 'package:flutter/material.dart';

class FirstStage extends StatelessWidget {
  const FirstStage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page0'),
      ),
      body: const Center(
        child: Text("最初のステージ_久樹"),
      ),
    );
  }
}
