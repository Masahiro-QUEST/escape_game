// Flutter imports:
import 'package:flutter/material.dart';

class SecondGame extends StatelessWidget {
  const SecondGame({super.key});

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
