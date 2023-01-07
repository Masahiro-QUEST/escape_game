// Flutter imports:
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class ThirdStage extends StatelessWidget {
  const ThirdStage({super.key});

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
                title: Text('Message'),
                content: TextField(
                  decoration: InputDecoration(hintText: '暗号を入力してください'),
                  keyboardType: TextInputType.number,
                ),
                actions: [
                  TextButton(
                    child: Text('OK'),
                    onPressed: () {
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
