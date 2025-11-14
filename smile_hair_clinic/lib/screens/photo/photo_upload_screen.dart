import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/app_header.dart';
import '../../widgets/app_card.dart';
import '../../widgets/cta_button.dart';
import 'camera_capture_screen.dart';

/// Fotoğraf Yükleme Ekranı
/// 
/// 5 açıdan fotoğraf çekimi için ana ekran
class PhotoUploadScreen extends StatefulWidget {
  const PhotoUploadScreen({super.key});

  @override
  State<PhotoUploadScreen> createState() => _PhotoUploadScreenState();
}

class _PhotoUploadScreenState extends State<PhotoUploadScreen> {
  // 5 açı için fotoğraf durumları
  final Map<int, bool> _photoStatus = {
    0: false, // Ön Görünüm
    1: false, // 45° Sağa
    2: false, // 45° Sola
    3: false, // Tepe
    4: false, // Arka
  };

  final List<Map<String, dynamic>> _photoAngles = [
    {
      'id': 0,
      'title': 'Ön Görünüm',
      'description': 'Tam yüz karşıdan',
      'icon': Icons.face,
      'angle': '0°',
    },
    {
      'id': 1,
      'title': '45° Sağa',
      'description': 'Yüzün ön ve sağ yan cephesi',
      'icon': Icons.face_retouching_natural,
      'angle': '45°',
    },
    {
      'id': 2,
      'title': '45° Sola',
      'description': 'Yüzün ön ve sol yan cephesi',
      'icon': Icons.face_retouching_natural,
      'angle': '45°',
    },
    {
      'id': 3,
      'title': 'Tepe Görünüm',
      'description': 'Kafa derisinin tepe bölgesi',
      'icon': Icons.vertical_align_top,
      'angle': '90°',
      'critical': true,
    },
    {
      'id': 4,
      'title': 'Arka Görünüm',
      'description': 'Ense üstü ve arka yan kısımlar',
      'icon': Icons.arrow_back,
      'angle': '180°',
      'critical': true,
    },
  ];

  Future<void> _handlePhotoCapture(int angleId) async {
    final angle = _photoAngles[angleId];
    final targetAngle = _getTargetAngle(angleId);

    // Kamera ekranına git
    final result = await Navigator.of(context).push<String>(
      MaterialPageRoute(
        builder: (context) => CameraCaptureScreen(
          angleId: angleId,
          angleTitle: angle['title'] as String,
          angleDescription: angle['description'] as String,
          targetAngle: targetAngle,
        ),
      ),
    );

    if (result != null && mounted) {
      // Fotoğraf çekildi
      setState(() {
        _photoStatus[angleId] = true;
      });
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${angle['title']} fotoğrafı çekildi'),
          backgroundColor: AppColors.successGreen,
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  double _getTargetAngle(int angleId) {
    switch (angleId) {
      case 0: // Ön Görünüm
        return 0.0;
      case 1: // 45° Sağa
      case 2: // 45° Sola
        return 45.0;
      case 3: // Tepe
        return 90.0;
      case 4: // Arka
        return 180.0;
      default:
        return 0.0;
    }
  }

  void _handlePhotoDelete(int angleId) {
    setState(() {
      _photoStatus[angleId] = false;
    });
  }

  void _handleUpload() {
    final completedPhotos = _photoStatus.values.where((status) => status).length;
    if (completedPhotos < 5) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Lütfen tüm açılardan fotoğraf çekiniz'),
          backgroundColor: AppColors.errorRed,
        ),
      );
      return;
    }

    // TODO: Fotoğrafları sunucuya yükle
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Fotoğraflar başarıyla yüklendi'),
        backgroundColor: AppColors.successGreen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final completedPhotos = _photoStatus.values.where((status) => status).length;
    
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      appBar: const AppHeader(
        title: 'Fotoğraf Yükle',
        trailing: Icon(
          Icons.info_outline,
          color: AppColors.pureWhite,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Açıklama Banner
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.softSkyBlue.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.softSkyBlue,
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.info_outline,
                        color: AppColors.softSkyBlue,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Bilgilendirme',
                        style: AppTextStyles.heading3.copyWith(
                          color: AppColors.deepNavy,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Saçınızın ön, tepe ve arka kısımlarının net fotoğraflarını yükleyin.',
                    style: AppTextStyles.bodyMedium,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Daha doğru analiz için yüksek çözünürlüklü fotoğraflar yükleyin.',
                    style: AppTextStyles.bodySmall,
                  ),
                ],
              ),
            ),

            // İlerleme Göstergesi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      value: completedPhotos / 5,
                      backgroundColor: AppColors.lightGray,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        AppColors.vividOrange,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    '$completedPhotos/5',
                    style: AppTextStyles.bodyMedium.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Fotoğraf Açıları Listesi
            ..._photoAngles.map((angle) {
              final angleId = angle['id'] as int;
              final isCompleted = _photoStatus[angleId] ?? false;
              final isCritical = angle['critical'] == true;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: AppCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // İkon
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: isCompleted
                                  ? AppColors.successGreen.withValues(alpha: 0.2)
                                  : AppColors.softSkyBlue.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              angle['icon'] as IconData,
                              color: isCompleted
                                  ? AppColors.successGreen
                                  : AppColors.softSkyBlue,
                            ),
                          ),
                          const SizedBox(width: 12),
                          
                          // Başlık ve Açıklama
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      angle['title'] as String,
                                      style: AppTextStyles.heading3,
                                    ),
                                    if (isCritical) ...[
                                      const SizedBox(width: 8),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 6,
                                          vertical: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppColors.errorRed.withValues(alpha: 0.2),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Text(
                                          'KRİTİK',
                                          style: AppTextStyles.caption.copyWith(
                                            color: AppColors.errorRed,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  angle['description'] as String,
                                  style: AppTextStyles.bodySmall,
                                ),
                                Text(
                                  'Açı: ${angle['angle']}',
                                  style: AppTextStyles.caption,
                                ),
                              ],
                            ),
                          ),
                          
                          // Durum İkonu
                          if (isCompleted)
                            const Icon(
                              Icons.check_circle,
                              color: AppColors.successGreen,
                              size: 24,
                            ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      
                      // Butonlar
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: isCompleted
                                  ? null
                                  : () => _handlePhotoCapture(angleId),
                              icon: const Icon(Icons.camera_alt),
                              label: Text(isCompleted ? 'Çekildi' : 'Fotoğraf Çek'),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: AppColors.deepNavy,
                                side: const BorderSide(color: AppColors.deepNavy),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          if (isCompleted)
                            IconButton(
                              onPressed: () => _handlePhotoDelete(angleId),
                              icon: const Icon(Icons.delete_outline),
                              color: AppColors.errorRed,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),

            const SizedBox(height: 24),

            // Yükle Butonu
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CTAButton(
                text: 'Fotoğrafları Yükle',
                onPressed: _handleUpload,
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

