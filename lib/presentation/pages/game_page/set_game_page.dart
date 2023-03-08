// Flutter imports:
import 'package:escape_from_me/presentation/pages/game_page/escape_me_third_stage.dart';
import 'package:flutter/material.dart';
// Project imports:
import 'package:escape_from_me/presentation/pages/game_page/escape_me_first_stage.dart';
import 'package:escape_from_me/presentation/pages/game_page/escape_me_second_stage.dart';
import 'package:escape_from_me/presentation/pages/game_page/escape_me_third_stage.dart';
import 'package:escape_from_me/presentation/pages/game_page/escape_me_fourth_stage.dart';

class SetGamePage extends StatelessWidget {
  SetGamePage(this.index);
  int index;

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return FirstStage();
    } else if (index == 1) {
      return const SecondStage();
    } else if (index == 2) {
      return ThirdStage();
    } else {
      return const FourthStage();
    }
  }
}
