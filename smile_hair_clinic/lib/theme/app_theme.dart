import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

/// Uygulama Teması
class AppTheme {
  AppTheme._(); // Private constructor

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.vividOrange,
        primary: AppColors.vividOrange,
        secondary: AppColors.softSkyBlue,
        surface: AppColors.pureWhite,
        error: AppColors.errorRed,
      ),
      
      // Scaffold Teması
      scaffoldBackgroundColor: AppColors.pureWhite,
      
      // AppBar Teması
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.deepNavy,
        foregroundColor: AppColors.pureWhite,
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleTextStyle: AppTextStyles.heading3,
        iconTheme: IconThemeData(
          color: AppColors.pureWhite,
          size: 24,
        ),
      ),
      
      // Card Teması
      cardTheme: CardThemeData(
        color: AppColors.pureWhite,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      
      // Button Temaları
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.vividOrange,
          foregroundColor: AppColors.pureWhite,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: AppTextStyles.buttonText,
        ),
      ),
      
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.vividOrange,
          textStyle: AppTextStyles.buttonTextSecondary,
        ),
      ),
      
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.deepNavy,
          side: const BorderSide(color: AppColors.deepNavy, width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: AppTextStyles.buttonTextSecondary,
        ),
      ),
      
      // Input Decoration Teması
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.pureWhite,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.lightGray),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.lightGray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.vividOrange, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.errorRed),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
      
      // Icon Teması
      iconTheme: const IconThemeData(
        color: AppColors.charcoalGray,
        size: 24,
      ),
      
      // Divider Teması
      dividerTheme: const DividerThemeData(
        color: AppColors.lightGray,
        thickness: 1,
        space: 1,
      ),
      
      // Bottom Navigation Bar Teması
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.pureWhite,
        selectedItemColor: AppColors.vividOrange,
        unselectedItemColor: AppColors.charcoalGray,
        selectedLabelStyle: AppTextStyles.caption,
        unselectedLabelStyle: AppTextStyles.caption,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),
    );
  }

  // Dark Theme (Gelecek için hazır)
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.vividOrange,
        brightness: Brightness.dark,
        primary: AppColors.vividOrange,
        secondary: AppColors.softSkyBlue,
        surface: const Color(0xFF1C3144),
      ),
      scaffoldBackgroundColor: AppColors.deepNavy,
      // Dark theme detayları buraya eklenebilir
    );
  }
}

