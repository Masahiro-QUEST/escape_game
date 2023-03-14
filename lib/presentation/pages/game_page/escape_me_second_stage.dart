// Flutter imports:
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../../../gen/assets.gen.dart';

class SecondStage extends StatefulWidget {
  const SecondStage({Key? key}) : super(key: key);

  @override
  _SecondStageState createState() => _SecondStageState();
}

class _SecondStageState extends State<SecondStage> {
  bool _isCorrectPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second stage"),
      ),
      body: GestureDetector(
        onTap: () {
          // Hide the keyboard when the user taps anywhere outside of the text field.
          FocusScope.of(context).unfocus();
        },
        child: Center(
          child: RiveAnimation.asset(
            _isCorrectPassword
                ? Assets.animation.keyVault
                : Assets.animation.keyVault,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show a dialog with a text field to enter the password.
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text("Enter password"),
              content: TextField(
                obscureText: true,
                onChanged: (password) {
                  // Check if the password is correct.
                  setState(() {
                    _isCorrectPassword = (password == "correct_password");
                  });
                },
              ),
            ),
          );
        },
        child: const Icon(Icons.lock),
      ),
    );
  }
}
