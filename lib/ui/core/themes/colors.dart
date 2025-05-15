// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AppColors {
  static const grey1 = Color(0xFFF2F2F2);
  static const grey2 = Color(0xFF4D4D4D);
  static const grey3 = Color(0xFFA4A4A4);
  static const whiteTransparent = Color(0x4DFFFFFF);
  static const blackTransparent = Color(0x4D000000);
  static const red1 = Color(0xFFE74C3C);

  static Color kWhite = Color(0xffffffff);
  static Color kBlack = Color(0xFF2A2E39);
  static Color kPrimary = Color(0xFFe0a400);
  static Color kBackGround = Color(0xFFf2f0f5);
  static Color kSecondary = Color(0xFFF4CE8C);
  static Color kPrimaryFixed = Color(0xFF8C8E8D);

  static var lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.kPrimary,
    onPrimary: AppColors.kWhite,
    secondary: AppColors.kSecondary,
    onSecondary: AppColors.kWhite,
    surface: Colors.white,
    onSurface: AppColors.kBlack,
    error: Colors.white,
    onError: Colors.red,
  );

  static var darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.kWhite,
    onPrimary: AppColors.kBlack,
    secondary: AppColors.kWhite,
    onSecondary: AppColors.kBlack,
    surface: AppColors.kBlack,
    onSurface: Colors.white,
    error: Colors.black,
    onError: AppColors.red1,
  );
}
