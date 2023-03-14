import 'package:flutter/material.dart';
import 'package:maze/maze.dart';

import 'package:escape_from_me/presentation/pages/game_page/escape_me_second_stage.dart';

class FirstStage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Maze Demo',
        theme: ThemeData(
            primarySwatch: Colors.orange,
            scaffoldBackgroundColor: Colors.blueGrey),
        home: MazeScreen());
  }
}

class MazeScreen extends StatefulWidget {
  @override
  _MazeScreenState createState() => _MazeScreenState();
}

class _MazeScreenState extends State<MazeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Expanded(
          child: Maze(
              player: MazeItem('assets/images/sumou.png', ImageType.asset),
              columns: 12,
              rows: 24,
              wallThickness: 4.0,
              wallColor: Theme.of(context).primaryColor,
              finish: MazeItem('assets/images/goal.png', ImageType.asset),
              onFinish: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondStage()),
                );
              }),
        ),
        Text(
          'ここに数字をフラッシュさせる',
          style: TextStyle(fontSize: 24),
        ),
      ],
    )));
  }
}
