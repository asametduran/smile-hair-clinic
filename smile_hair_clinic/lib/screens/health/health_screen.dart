import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/app_header.dart';

/// Sağlık/Süreç Takibi Ekranı
class HealthScreen extends StatelessWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhite,
      appBar: const AppHeader(
        title: 'Sağlık',
        showBackButton: false,
      ),
      body: Center(
        child: Text(
          'Süreç takibi ekranı geliştiriliyor...',
          style: AppTextStyles.bodyLarge,
        ),
      ),
    );
  }
}

