// Flutter imports:
import 'package:escape_from_me/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class FirstStage extends StatelessWidget {
  const FirstStage({super.key});
  final double _width = 200;
  final double _height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page0'),
      ),
      body: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Enter password'),
                  // ignore: prefer_const_constructors
                  content: TextField(
                      obscureText: true,
                      maxLength: 4,
                      keyboardType: TextInputType.number,
                      keyboardAppearance: Brightness.dark),
                  actions: <Widget>[
                    ElevatedButton(
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
          child: Assets.images.darkRoomRock.svg(
            width: 500,
          )),
    );
  }
}
