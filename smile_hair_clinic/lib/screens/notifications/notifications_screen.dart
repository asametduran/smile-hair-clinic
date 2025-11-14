import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/app_header.dart';

/// Bildirimler Ekranı
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhite,
      appBar: const AppHeader(
        title: 'Bildirimler',
        showBackButton: false,
      ),
      body: Center(
        child: Text(
          'Bildirimler ekranı geliştiriliyor...',
          style: AppTextStyles.bodyLarge,
        ),
      ),
    );
  }
}

