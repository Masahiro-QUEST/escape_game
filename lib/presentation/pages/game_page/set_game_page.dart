import 'package:flutter/material.dart';

class SetGamePage extends StatelessWidget {
  SetGamePage(this.index);
  int index;

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Next page0'),
        ),
        body: Center(
          child: Text(index.toString()),
        ),
      );
    } else if (index == 1) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Next page1'),
        ),
        body: Center(
          child: Text(index.toString()),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Next page2'),
        ),
        body: Center(
          child: Text(index.toString()),
        ),
      );
    }
  }
}
