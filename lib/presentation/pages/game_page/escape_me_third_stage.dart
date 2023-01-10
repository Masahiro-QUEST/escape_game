// Flutter imports:
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class ThirdStage extends StatefulWidget {
  @override
  _ThirdStageState createState() => _ThirdStageState();
}

class _ThirdStageState extends State<ThirdStage> {
  final _passwordController = TextEditingController();
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
        child: const Center(
          child: RiveAnimation.asset("assets/animation/key_rock.riv"),
        ),
      ),
    );
  }
}
