import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const orange = Color(0xFFDA944F);
  static const red = Color(0xFFA71125);
  static const black = Color(0xFF313131);
  static const white = Color(0xFFFFFFFF);
  static const blue = Color(0xFF155C9B);
  static const grey = Color(0xFFD3D3D3);
  static const whiteSmoke = Color(0xFFFFFCF5);
  static const green = Color(0xFF05541C);
  static const yellow = Color(0xFFF2B903);

  const AppColors._();
}

final theme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.whiteSmoke,
  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      foregroundColor: AppColors.black,
      padding: const EdgeInsets.all(4.0),
      fixedSize: const Size.fromHeight(24),
      iconSize: 24,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.red,
      foregroundColor: AppColors.white,
      maximumSize: const Size.fromHeight(48),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      minimumSize: const Size.fromHeight(26),
      textStyle: GoogleFonts.openSans().copyWith(
        fontSize: 14,
        height: 1,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
  ),
);
