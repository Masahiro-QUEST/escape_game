/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsAnimationGen {
  const $AssetsAnimationGen();

  /// File path: assets/animation/Charge_door.riv
  String get chargeDoor => 'assets/animation/Charge_door.riv';

  /// File path: assets/animation/key_rock.riv
  String get keyRock => 'assets/animation/key_rock.riv';

  /// File path: assets/animation/key_rock_slide.riv
  String get keyRockSlide => 'assets/animation/key_rock_slide.riv';

  /// File path: assets/animation/key_vault.riv
  String get keyVault => 'assets/animation/key_vault.riv';

  /// File path: assets/animation/mixing_animations.riv
  String get mixingAnimations => 'assets/animation/mixing_animations.riv';

  /// List of all assets
  List<String> get values =>
      [chargeDoor, keyRock, keyRockSlide, keyVault, mixingAnimations];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/blackWhiteRoom.svg
  SvgGenImage get blackWhiteRoom =>
      const SvgGenImage('assets/images/blackWhiteRoom.svg');

  /// File path: assets/images/darkRoom.svg
  SvgGenImage get darkRoom => const SvgGenImage('assets/images/darkRoom.svg');

  /// File path: assets/images/darkRoom_rock.svg
  SvgGenImage get darkRoomRock =>
      const SvgGenImage('assets/images/darkRoom_rock.svg');

  /// File path: assets/images/fifth.svg
  SvgGenImage get fifth => const SvgGenImage('assets/images/fifth.svg');

  /// File path: assets/images/find_the_difference_image.png
  AssetGenImage get findTheDifferenceImage =>
      const AssetGenImage('assets/images/find_the_difference_image.png');

  /// File path: assets/images/first_stage_open.png
  AssetGenImage get firstStageOpen =>
      const AssetGenImage('assets/images/first_stage_open.png');

  /// File path: assets/images/fourth.svg
  SvgGenImage get fourth => const SvgGenImage('assets/images/fourth.svg');

  /// File path: assets/images/goal.png
  AssetGenImage get goal => const AssetGenImage('assets/images/goal.png');

  /// File path: assets/images/key.svg
  SvgGenImage get key => const SvgGenImage('assets/images/key.svg');

  /// File path: assets/images/keyRock.svg
  SvgGenImage get keyRock => const SvgGenImage('assets/images/keyRock.svg');

  /// File path: assets/images/keyRockOpen.svg
  SvgGenImage get keyRockOpen =>
      const SvgGenImage('assets/images/keyRockOpen.svg');

  /// File path: assets/images/rock_key_open_whole.svg
  SvgGenImage get rockKeyOpenWhole =>
      const SvgGenImage('assets/images/rock_key_open_whole.svg');

  /// File path: assets/images/rockerRoom.svg
  SvgGenImage get rockerRoom =>
      const SvgGenImage('assets/images/rockerRoom.svg');

  /// File path: assets/images/room.svg
  SvgGenImage get room => const SvgGenImage('assets/images/room.svg');

  /// File path: assets/images/sumou.png
  AssetGenImage get sumou => const AssetGenImage('assets/images/sumou.png');

  /// List of all assets
  List<dynamic> get values => [
        blackWhiteRoom,
        darkRoom,
        darkRoomRock,
        fifth,
        findTheDifferenceImage,
        firstStageOpen,
        fourth,
        goal,
        key,
        keyRock,
        keyRockOpen,
        rockKeyOpenWhole,
        rockerRoom,
        room,
        sumou
      ];
}

class Assets {
  Assets._();

  static const $AssetsAnimationGen animation = $AssetsAnimationGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
