import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Tipografi ve Metin Stilleri
class AppTextStyles {
  AppTextStyles._(); // Private constructor

  // Başlık Stilleri
  static const TextStyle heading1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.deepNavy,
    height: 1.2,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.deepNavy,
    height: 1.3,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.deepNavy,
    height: 1.4,
  );

  // Gövde Metni Stilleri
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.charcoalGray,
    height: 1.5,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.charcoalGray,
    height: 1.5,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.charcoalGray,
    height: 1.4,
  );

  // Buton Metinleri
  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.pureWhite,
    letterSpacing: 0.5,
  );

  static const TextStyle buttonTextSecondary = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.deepNavy,
    letterSpacing: 0.3,
  );

  // Özel Stiller
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.charcoalGray,
    height: 1.3,
  );

  static const TextStyle overline = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.charcoalGray,
    letterSpacing: 1.5,
    height: 1.2,
  );

  // Beyaz Metin (Koyu arka planlar için)
  static const TextStyle heading1White = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.pureWhite,
    height: 1.2,
  );

  static const TextStyle bodyLargeWhite = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.pureWhite,
    height: 1.5,
  );
}

