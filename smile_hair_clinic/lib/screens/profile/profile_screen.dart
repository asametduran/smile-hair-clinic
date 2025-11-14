import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/app_header.dart';

/// Profil Ekranı
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhite,
      appBar: const AppHeader(
        title: 'Profil',
        showBackButton: false,
      ),
      body: Center(
        child: Text(
          'Profil ekranı geliştiriliyor...',
          style: AppTextStyles.bodyLarge,
        ),
      ),
    );
  }
}

