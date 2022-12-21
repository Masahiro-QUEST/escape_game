import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// ignore: camel_case_types
class GameCardList extends StatefulWidget {
  final _colors = [
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.pink,
  ];
  final int index;
  GameCardList({required this.index});
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<GameCardList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Card ボタンの色を変更する処理
        setState(() {
          widget._colors[widget.index] = Colors.red;
        });
      },
      child: Card(
        color: widget._colors[widget.index % 4],
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            for (var i = 0; i < 10; i++)
              GameCardList(
                index: i,
              )
          ],
        ));
  }
}
