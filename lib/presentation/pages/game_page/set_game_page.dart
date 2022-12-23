// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:escape_from_me/presentation/pages/game_page/escape_me_first_stage.dart';
import 'package:escape_from_me/presentation/pages/game_page/escape_me_second_stage.dart';

class SetGamePage extends StatelessWidget {
  SetGamePage(this.index);
  int index;

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return const FirstStage();
    } else if (index == 1) {
      return const SecondGame();
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
