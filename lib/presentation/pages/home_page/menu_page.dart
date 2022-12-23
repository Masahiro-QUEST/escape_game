// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:escape_from_me/presentation/pages/game_page/set_game_page.dart';

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
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SetGamePage(widget.index),
          ),
        );
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
