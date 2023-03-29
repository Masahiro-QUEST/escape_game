import 'dart:ffi';
import 'dart:math';
import '../../../gen/assets.gen.dart';

import 'package:flutter/material.dart';

class FifthStage extends StatefulWidget {
  const FifthStage({Key? key}) : super(key: key);

  @override
  _FifthStageState createState() => _FifthStageState();
}

class _FifthStageState extends State<FifthStage> {
  late final List<String> _imagePaths;

  late final List<DiffPoint> _rects;

  late int _currentRectIndex;

  @override
  void initState() {
    super.initState();

    // 画像の上に描画する矩形の位置を決定する
    _rects = [
      DiffPoint(diffArea: Rect.fromLTWH(58, 327, 50, 50)), // 時計
      DiffPoint(diffArea: Rect.fromLTWH(174, 321, 50, 50)), // カモメ
      DiffPoint(diffArea: Rect.fromLTWH(137, 440, 50, 50)), // エビフライ
      DiffPoint(diffArea: Rect.fromLTWH(48, 555, 50, 50)), // ねこ（テーブル下）
      DiffPoint(diffArea: Rect.fromLTWH(286, 473, 50, 50)), // ねこ（テーブル上）
      DiffPoint(diffArea: Rect.fromLTWH(325, 413, 50, 50)), // 植木鉢
      DiffPoint(diffArea: Rect.fromLTWH(254, 431, 50, 50)), // ワイン
    ];

    // 最初の矩形のインデックスを決定する
    _currentRectIndex = Random().nextInt(_rects.length);
  }

  void _onTap(BuildContext context, Offset position) {
    //タップ位置のログ出力
    print('Tap detected! X:${position.dx} Y:${position.dy}');

    //タップした場所が不正解の際にダイアログを出すためのフラグ
    var isCollect = false;

    _rects.forEach((rect) {
      // 矩形をタップしたかどうかをチェックする
      if (rect.diffArea.contains(position)) {
        setState(() {
          rect.isFound = true;
          isCollect = true;
        });
      } else {}
    });

    //不正解の場合は、アラートを表示する
    if (!isCollect) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Wrong Answer'),
          content: Text('Try Again!'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }

    if (isAllDiffPointFound(_rects)) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Collect Answer'),
          content: Text('Good!'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find the Difference'),
      ),
      body: GestureDetector(
        onTapDown: (details) => _onTap(context, details.localPosition),
        child: Stack(
          children: [
            // 差分のある画像
            Image.asset(
              Assets.images.findTheDifferenceImage.path,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fitHeight,
            ),

            ..._rects
                .map(
                  (rect) => Positioned(
                    left: rect.diffArea.left,
                    top: rect.diffArea.top,
                    width: rect.diffArea.width,
                    height: rect.diffArea.height,
                    child: rect.isFound == true
                        ? // isFoundがtrueの場合は矩形を表示
                        ClipOval(
                            // isFoundがfalseの場合は丸を表示
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red.withOpacity(0.2),
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.red,
                                    width: 10,
                                    strokeAlign: BorderSide.strokeAlignCenter),
                              ),
                            ),
                          )
                        : ClipOval(
                            // isFoundがfalseの場合は丸を表示
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow.withOpacity(0.0),
                                border: Border.all(
                                    color: Colors.yellow.withOpacity(0.0)),
                              ),
                            ),
                          ),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }

  bool isAllDiffPointFound(List<DiffPoint> diffPoints) {
    bool result = true;
    for (var point in diffPoints) {
      if (point.isFound == false) {
        result = false;
        break;
      }
    }
    return result;
  }
}

class DiffPoint {
  Rect diffArea;
  bool isFound = false;

  DiffPoint({required this.diffArea});
}
