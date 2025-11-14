import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/app_header.dart';
import '../../widgets/app_card.dart';
import '../../widgets/cta_button.dart';

/// Klinik Hakkında Ekranı
class AboutClinicScreen extends StatelessWidget {
  const AboutClinicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhite,
      appBar: const AppHeader(
        title: 'Klinik Hakkında',
        trailing: Icon(
          Icons.info_outline,
          color: AppColors.pureWhite,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Klinik Profili
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.deepNavy,
                    AppColors.softSkyBlue,
                  ],
                ),
              ),
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  // Klinik Logosu (Dairesel)
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: AppColors.softSkyBlue.withValues(alpha: 0.3),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.pureWhite,
                        width: 3,
                      ),
                    ),
                    child: const Icon(
                      Icons.local_hospital,
                      size: 60,
                      color: AppColors.pureWhite,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Smile Clinic Saç Ekimi Merkezi',
                    style: AppTextStyles.heading2.copyWith(
                      color: AppColors.pureWhite,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Saç ekimi, PRP mezoterapi ve saç sağlığı hizmetlerinde uzman kadromuz.',
                    style: AppTextStyles.bodyLargeWhite.copyWith(
                      color: AppColors.pureWhite.withValues(alpha: 0.9),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Uzman Kadromuz
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Uzman Kadromuz',
                    style: AppTextStyles.heading2,
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildExpertCard(
                          name: 'Dr. Ali Osman',
                          specialty: 'Saç Ekimi Uzmanı',
                        ),
                        const SizedBox(width: 12),
                        _buildExpertCard(
                          name: 'Dr. Ayşe Kaya',
                          specialty: 'Saç Ekimi Uzmanı',
                        ),
                        const SizedBox(width: 12),
                        _buildExpertCard(
                          name: 'Dr. Mehmet Yılmaz',
                          specialty: 'Saç Ekimi Uzmanı',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Hizmetlerimiz
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hizmetlerimiz',
                    style: AppTextStyles.heading2,
                  ),
                  const SizedBox(height: 16),
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 1.2,
                    children: [
                      _buildServiceCard(
                        icon: Icons.content_cut,
                        title: 'Saç Ekimi',
                      ),
                      _buildServiceCard(
                        icon: Icons.bloodtype,
                        title: 'PRP Tedavisi',
                      ),
                      _buildServiceCard(
                        icon: Icons.search,
                        title: 'Saç Analizi',
                      ),
                      _buildServiceCard(
                        icon: Icons.medical_services,
                        title: 'Mezoterapi',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // İletişim ve Ulaşım
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'İletişim ve Ulaşım',
                    style: AppTextStyles.heading2,
                  ),
                  const SizedBox(height: 16),
                  AppCard(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: AppColors.softSkyBlue,
                          size: 24,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            '1234 Sokak, Karatay, Konya',
                            style: AppTextStyles.bodyLarge,
                          ),
                        ),
                        CTAButton(
                          text: 'Yolu Tarife Aç',
                          onPressed: () {
                            // TODO: Open maps
                          },
                          width: 140,
                        ),
                      ],
                    ),
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

  Widget _buildExpertCard({
    required String name,
    required String specialty,
  }) {
    return AppCard(
      width: 140,
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: AppColors.softSkyBlue.withValues(alpha: 0.2),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.person,
              size: 40,
              color: AppColors.softSkyBlue,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            name,
            style: AppTextStyles.heading3,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            specialty,
            style: AppTextStyles.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard({
    required IconData icon,
    required String title,
  }) {
    return AppCard(
      onTap: () {
        // TODO: Navigate to service detail
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: AppColors.softSkyBlue,
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: AppTextStyles.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

