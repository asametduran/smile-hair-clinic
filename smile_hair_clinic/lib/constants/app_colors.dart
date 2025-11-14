import 'package:flutter/material.dart';

/// Smile Hair Clinic Renk Paleti
/// 
/// Ana renkler, vurgu renkleri ve yardımcı tonlar
class AppColors {
  AppColors._(); // Private constructor

  // Ana Renkler
  static const Color deepNavy = Color(0xFF0A2342);
  static const Color pureWhite = Color(0xFFFFFFFF);

  // Vurgu Renkleri
  static const Color vividOrange = Color(0xFFF15A24);
  static const Color softSkyBlue = Color(0xFF76C7F0);

  // Yardımcı Tonlar
  static const Color charcoalGray = Color(0xFF2E3A46);
  static const Color lightGray = Color(0xFFE6E7E8);

  // Ek Renkler (UI için)
  static const Color successGreen = Color(0xFF4CAF50);
  static const Color errorRed = Color(0xFFE53935);
  static const Color warningYellow = Color(0xFFFFC107);
  
  // Gradient Renkler
  static const Color darkBlueGradient = Color(0xFF0A2342);
  static const Color lightBlueGradient = Color(0xFF1C3144);
  
  // Mesajlaşma Renkleri
  static const Color messageBubbleLight = Color(0xFFE3F2FD);
  static const Color messageBubbleDark = Color(0xFF2196F3);
  
  // Overlay Renkleri (Fotoğraf çekim kılavuzu için)
  static const Color overlayRed = Color(0xFFFF5252);      // Yanlış pozisyon
  static const Color overlayYellow = Color(0xFFFFC107);    // Yakın pozisyon
  static const Color overlayGreen = Color(0xFF4CAF50);     // Doğru pozisyon
}

