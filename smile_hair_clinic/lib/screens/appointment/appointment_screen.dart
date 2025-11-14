import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/app_header.dart';

/// Randevu Ekranı
class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhite,
      appBar: const AppHeader(
        title: 'Randevularım',
        showBackButton: false,
      ),
      body: Center(
        child: Text(
          'Randevu ekranı geliştiriliyor...',
          style: AppTextStyles.bodyLarge,
        ),
      ),
    );
  }
}

