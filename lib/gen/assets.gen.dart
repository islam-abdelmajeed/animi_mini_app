// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/character1.png
  AssetGenImage get character1 =>
      const AssetGenImage('assets/images/character1.png');

  /// File path: assets/images/character2.png
  AssetGenImage get character2 =>
      const AssetGenImage('assets/images/character2.png');

  /// File path: assets/images/character3.png
  AssetGenImage get character3 =>
      const AssetGenImage('assets/images/character3.png');

  /// File path: assets/images/character4.png
  AssetGenImage get character4 =>
      const AssetGenImage('assets/images/character4.png');

  /// File path: assets/images/character5.png
  AssetGenImage get character5 =>
      const AssetGenImage('assets/images/character5.png');

  /// File path: assets/images/files.png
  AssetGenImage get files => const AssetGenImage('assets/images/files.png');

  /// File path: assets/images/post1.png
  AssetGenImage get post1 => const AssetGenImage('assets/images/post1.png');

  /// File path: assets/images/post2.png
  AssetGenImage get post2 => const AssetGenImage('assets/images/post2.png');

  /// File path: assets/images/post3.png
  AssetGenImage get post3 => const AssetGenImage('assets/images/post3.png');

  /// File path: assets/images/post4.png
  AssetGenImage get post4 => const AssetGenImage('assets/images/post4.png');

  /// File path: assets/images/post5.png
  AssetGenImage get post5 => const AssetGenImage('assets/images/post5.png');

  /// File path: assets/images/rocket.png
  AssetGenImage get rocket => const AssetGenImage('assets/images/rocket.png');

  /// File path: assets/images/star1.png
  AssetGenImage get star1 => const AssetGenImage('assets/images/star1.png');

  /// File path: assets/images/star2.png
  AssetGenImage get star2 => const AssetGenImage('assets/images/star2.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    character1,
    character2,
    character3,
    character4,
    character5,
    files,
    post1,
    post2,
    post3,
    post4,
    post5,
    rocket,
    star1,
    star2,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
