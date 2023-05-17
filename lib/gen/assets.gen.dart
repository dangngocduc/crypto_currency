/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/group_bottom_left_card.svg
  String get groupBottomLeftCard => 'assets/icons/group_bottom_left_card.svg';

  /// File path: assets/icons/group_top_right_card.svg
  String get groupTopRightCard => 'assets/icons/group_top_right_card.svg';

  /// File path: assets/icons/ic_ETH.svg
  String get icETH => 'assets/icons/ic_ETH.svg';

  /// File path: assets/icons/ic_arrow_up.svg
  String get icArrowUp => 'assets/icons/ic_arrow_up.svg';

  /// File path: assets/icons/ic_back.svg
  String get icBack => 'assets/icons/ic_back.svg';

  /// File path: assets/icons/ic_chart.svg
  String get icChart => 'assets/icons/ic_chart.svg';

  /// File path: assets/icons/ic_chart1.png
  AssetGenImage get icChart1 =>
      const AssetGenImage('assets/icons/ic_chart1.png');

  /// File path: assets/icons/ic_filter.svg
  String get icFilter => 'assets/icons/ic_filter.svg';

  /// File path: assets/icons/ic_scan.svg
  String get icScan => 'assets/icons/ic_scan.svg';

  /// File path: assets/icons/ic_wallet.svg
  String get icWallet => 'assets/icons/ic_wallet.svg';

  /// List of all assets
  List<dynamic> get values => [
        groupBottomLeftCard,
        groupTopRightCard,
        icETH,
        icArrowUp,
        icBack,
        icChart,
        icChart1,
        icFilter,
        icScan,
        icWallet
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/avatar_sample.png
  AssetGenImage get avatarSample =>
      const AssetGenImage('assets/images/avatar_sample.png');

  /// File path: assets/images/ic_bitcoin.svg
  String get icBitcoin => 'assets/images/ic_bitcoin.svg';

  /// File path: assets/images/ic_ripple_coin.svg
  String get icRippleCoin => 'assets/images/ic_ripple_coin.svg';

  /// List of all assets
  List<dynamic> get values => [avatarSample, icBitcoin, icRippleCoin];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
