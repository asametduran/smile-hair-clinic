import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';

/// Onboarding Sayfa 1: Hoş Geldin Ekranı
class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.deepNavy.withValues(alpha: 0.9),
            AppColors.softSkyBlue.withValues(alpha: 0.7),
          ],
        ),
      ),
      child: Stack(
        children: [
          // Bulanık arka plan görseli (şimdilik gradient)
          // TODO: Gerçek klinik görseli eklenecek
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.deepNavy.withValues(alpha: 0.8),
                  AppColors.softSkyBlue.withValues(alpha: 0.6),
                ],
              ),
            ),
          ),
          
          // İçerik
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  
                  // Başlık
                  Text(
                    "Smile Hair Clinic'e\nHoş Geldiniz!",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.heading1White.copyWith(
                      fontSize: 32,
                      height: 1.2,
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Alt başlık
                  Text(
                    "Saç sağlığınız için\n yenilikçi çözümler",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bodyLargeWhite.copyWith(
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),
                  
                  const Spacer(flex: 3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

