import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';

/// Onboarding Sayfa 2: Bilgilendirme Ekranı
class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.pureWhite,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Bilgi ikonu
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: AppColors.softSkyBlue.withValues(alpha: 0.2),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.info_outline,
                  size: 40,
                  color: AppColors.softSkyBlue,
                ),
              ),
              
              const SizedBox(height: 32),
              
              // Başlık
              Text(
                "Sürecinizi Takip Edin",
                textAlign: TextAlign.center,
                style: AppTextStyles.heading2,
              ),
              
              const SizedBox(height: 24),
              
              // Açıklama metni
              Text(
                "Operasyon sonrası tüm süreci, iyileşme adımlarını ve size özel talimatları buradan kolayca yönetin.",
                textAlign: TextAlign.center,
                style: AppTextStyles.bodyLarge,
              ),
              
              const SizedBox(height: 16),
              
              Text(
                "Uygulamamız, iyileşme döneminizi en konforlu şekilde geçirmeniz için tasarlandı. Fotoğraf yükleyerek doktorunuza danışabilir ve anlık bildirimler alabilirsiniz.",
                textAlign: TextAlign.center,
                style: AppTextStyles.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

