// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTheme {
  static final _textTheme = TextTheme(
    bodySmall: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w400, color: AppColors.kPrimaryFixed, fontSize: 12)),
    bodyMedium: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w400, color: AppColors.kPrimaryFixed, fontSize: 14)),
    bodyLarge: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w400, color: AppColors.kPrimaryFixed, fontSize: 16)),
    titleSmall: GoogleFonts.archivoBlack(textStyle: TextStyle(fontWeight: FontWeight.w500, color: AppColors.kBlack, fontSize: 14)),
    titleMedium: GoogleFonts.archivoBlack(textStyle: TextStyle(fontWeight: FontWeight.w500, color: AppColors.kBlack, fontSize: 18)),
    titleLarge: GoogleFonts.archivoBlack(textStyle: TextStyle(fontWeight: FontWeight.w500, color: AppColors.kPrimary, fontSize: 24)),
    labelSmall: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w400, color: AppColors.kBlack, fontSize: 12)),
    labelMedium: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w400, color: AppColors.kBlack, fontSize: 14)),
    labelLarge: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w400, color: AppColors.kBlack, fontSize: 16)),
    headlineSmall: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w400, color: AppColors.kPrimary, fontSize: 12)),
    headlineMedium: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w400, color: AppColors.kPrimary, fontSize: 14)),
    headlineLarge: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w400, color: AppColors.kPrimary, fontSize: 28)),
    displaySmall: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w400, color: AppColors.kPrimary, fontSize: 12)),
    displayMedium: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w400, color: AppColors.kPrimary, fontSize: 14)),
    displayLarge: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w400, color: AppColors.kPrimary, fontSize: 16)),
  );

  static final _inputDecorationTheme = InputDecorationTheme(
    // filled: true,
    fillColor: AppColors.kWhite,
    // contentPadding: const EdgeInsets.all(8),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    prefixIconColor: AppColors.kPrimaryFixed,
    hintStyle: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w400, color: AppColors.kPrimaryFixed, fontSize: 14)),
    // errorStyle: GoogleFonts.rubik(textStyle: const TextStyle(fontWeight: FontWeight.w400, color: Colors.red, fontSize: kLabelMedium)),
    labelStyle: GoogleFonts.rubik(textStyle: TextStyle(color: AppColors.kBlack, fontSize: 18, fontWeight: FontWeight.w600)),
    // focusColor: kBlack,
    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.kPrimary), borderRadius: BorderRadius.all(Radius.circular(8))),
    errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(8))),
  );

  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      iconColor: WidgetStatePropertyAll(AppColors.kWhite),
      backgroundColor: WidgetStatePropertyAll(AppColors.kPrimary),
      foregroundColor: WidgetStatePropertyAll(AppColors.kBlack),
      elevation: const WidgetStatePropertyAll(0),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
    ),
  );

  static const _textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(visualDensity: VisualDensity.compact, tapTargetSize: MaterialTapTargetSize.shrinkWrap, padding: WidgetStatePropertyAll(EdgeInsets.zero)),
  );

  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.kPrimary,
    scaffoldBackgroundColor: AppColors.kBackGround,
    brightness: Brightness.light,
    colorScheme: AppColors.lightColorScheme,
    textTheme: _textTheme,
    inputDecorationTheme: _inputDecorationTheme,
    // extensions: [TagChipTheme(chipColor: AppColors.whiteTransparent, onChipColor: Colors.white)],
    iconTheme: IconThemeData(color: AppColors.kPrimaryFixed),
    elevatedButtonTheme: _elevatedButtonTheme,
    textButtonTheme: _textButtonTheme,
    dividerTheme: const DividerThemeData(color: Colors.transparent),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: AppColors.darkColorScheme,
    textTheme: _textTheme,
    inputDecorationTheme: _inputDecorationTheme,
    // extensions: [TagChipTheme(chipColor: AppColors.blackTransparent, onChipColor: Colors.white)],
  );
}
