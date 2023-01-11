// Flutter imports:
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../../gen/assets.gen.dart';

class ThirdStage extends StatefulWidget {
  @override
  _ThirdStageState createState() => _ThirdStageState();
}

class _ThirdStageState extends State<ThirdStage> {
  final _passwordController = TextEditingController();
  bool _isCorrect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page1'),
      ),
      body: InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Message'),
                  content: TextField(
                    decoration: const InputDecoration(hintText: '暗号を入力してください'),
                    keyboardType: TextInputType.number,
                    controller: _passwordController,
                  ),
                  actions: [
                    TextButton(
                      child: Text('OK'),
                      onPressed: () {
                        setState(() {
                          _passwordController.text == "1234"
                              ? _isCorrect = true
                              : _isCorrect = false;
                        });
                        if (_passwordController.text == "1234") {
                          print("Correct Password");
                        } else {
                          print("Uncorrect Password");
                        }
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: _passwordController.text == "1234"
              ? Assets.images.keyRockOpen.svg(width: 500)
              : Assets.images.keyRock.svg(width: 500)),
    );
  }
}
