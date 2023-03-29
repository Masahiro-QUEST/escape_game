import 'dart:math';
import 'package:flutter/material.dart';

class ThirdStage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Number Generator',
      home: RandomNumberScreen(),
    );
  }
}

class RandomNumberScreen extends StatefulWidget {
  @override
  _RandomNumberScreenState createState() => _RandomNumberScreenState();
}

class _RandomNumberScreenState extends State<RandomNumberScreen> {
  int _randomNumber1 = 0;
  int _randomNumber2 = 0;

  final _random = Random();

  void _generateRandomNumber() {
    setState(() {
      _randomNumber1 = _random.nextInt(100) + 1;
    });
    setState(() {
      _randomNumber2 = _random.nextInt(100) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ランダム数字ジェネレーター'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ランダムな数字:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '$_randomNumber1',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            Text(
              '$_randomNumber2',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _generateRandomNumber,
              child: Text('新しい数字を生成'),
            ),
          ],
        ),
      ),
    );
  }
}
