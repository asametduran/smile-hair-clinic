import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/app_card.dart';
import '../../widgets/app_header.dart';
import '../../widgets/cta_button.dart';
import '../clinic/about_clinic_screen.dart';
import '../photo/photo_upload_screen.dart';

/// Ana Sayfa Ekranı
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhite,
      appBar: const AppHeader(
        title: 'Ana Sayfa',
        showBackButton: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hoş geldiniz kartı
            AppCard(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hoş Geldiniz',
                    style: AppTextStyles.heading2,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Saç sağlığınız için yenilikçi çözümler',
                    style: AppTextStyles.bodyMedium,
                  ),
                ],
              ),
            ),

            // Hızlı Erişim Butonları
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  CTAButton(
                    text: 'Fotoğraf Yükle',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PhotoUploadScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AboutClinicScreen(),
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.deepNavy,
                      side: const BorderSide(color: AppColors.deepNavy),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text('Klinik Hakkında'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

