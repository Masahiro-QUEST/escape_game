import 'package:flutter/material.dart';
import 'package:maze/maze.dart';

import 'package:escape_from_me/presentation/pages/game_page/escape_me_second_stage.dart';

class FirstStage extends StatelessWidget {
  const FirstStage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Maze Demo',
        theme: ThemeData(
            primarySwatch: Colors.orange,
            scaffoldBackgroundColor: Colors.blueGrey),
        home: const MazeScreen());
  }
}

class MazeScreen extends StatefulWidget {
  const MazeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MazeScreenState createState() => _MazeScreenState();
}

class _MazeScreenState extends State<MazeScreen>
    with SingleTickerProviderStateMixin {
  double _opacity = 1;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 50000),
    )..repeat(reverse: true);
    _animationController.addListener(() {
      setState(() {
        _opacity = _animationController.value;
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondStage()),
                );
              }),
        ),
        AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(microseconds: 50000),
          child: const Text(
            '1624',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ],
    )));
  }
}
