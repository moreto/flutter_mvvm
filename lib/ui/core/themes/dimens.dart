import 'package:flutter/material.dart';

abstract final class Dimens {
  const Dimens();

  /// General horizontal padding used to separate UI items
  static const paddingHorizontal = 20.0;

  /// General vertical padding used to separate UI items
  static const paddingVertical = 24.0;

  /// Horizontal padding for screen edges
  double get paddingScreenHorizontal;

  /// Vertical padding for screen edges
  double get paddingScreenVertical;

  double get profilePictureSize;

  /// Horizontal symmetric padding for screen edges
  EdgeInsets get edgeInsetsScreenHorizontal => EdgeInsets.symmetric(horizontal: paddingScreenHorizontal);

  /// Symmetric padding for screen edges
  EdgeInsets get edgeInsetsScreenSymmetric => EdgeInsets.symmetric(horizontal: paddingScreenHorizontal, vertical: paddingScreenVertical);

  static const Dimens mobile = _DimensMobile();

  // MediaQuery.sizeOf(context).width
}

/// Mobile dimensions
final class _DimensMobile extends Dimens {
  @override
  final double paddingScreenHorizontal = Dimens.paddingHorizontal;

  @override
  final double paddingScreenVertical = Dimens.paddingVertical;

  @override
  final double profilePictureSize = 64.0;

  const _DimensMobile();
}
