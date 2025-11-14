import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/app_header.dart';
import '../../widgets/cta_button.dart';
import '../../services/camera_service.dart';

/// Kamera Çekim Ekranı
/// 
/// Belirli bir açı için fotoğraf çekme ekranı
class CameraCaptureScreen extends StatefulWidget {
  final int angleId;
  final String angleTitle;
  final String angleDescription;
  final double targetAngle; // Hedef telefon açısı (0°, 45°, 90°)

  const CameraCaptureScreen({
    super.key,
    required this.angleId,
    required this.angleTitle,
    required this.angleDescription,
    required this.targetAngle,
  });

  @override
  State<CameraCaptureScreen> createState() => _CameraCaptureScreenState();
}

class _CameraCaptureScreenState extends State<CameraCaptureScreen> {
  CameraController? _controller;
  bool _isInitialized = false;
  bool _isLoading = true;
  String? _errorMessage;
  String? _capturedImagePath;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    try {
      // İzinleri kontrol et
      final hasPermission = await CameraService.checkAllPermissions();
      if (!hasPermission) {
        setState(() {
          _errorMessage = 'Kamera izni verilmedi. Lütfen ayarlardan izin verin.';
          _isLoading = false;
        });
        return;
      }

      // Kamerayı başlat
      final controller = await CameraService.initializeCamera(
        resolution: ResolutionPreset.high,
      );

      setState(() {
        _controller = controller;
        _isInitialized = true;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Kamera başlatılamadı: ${e.toString()}';
        _isLoading = false;
      });
    }
  }

  Future<void> _takePicture() async {
    if (_controller == null || !_controller!.value.isInitialized) {
      return;
    }

    try {
      setState(() {
        _isLoading = true;
      });

      final imagePath = await CameraService.takePicture(_controller!);
      
      setState(() {
        _capturedImagePath = imagePath;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Fotoğraf çekilemedi: ${e.toString()}';
        _isLoading = false;
      });
    }
  }

  void _acceptPhoto() {
    if (_capturedImagePath != null) {
      Navigator.of(context).pop(_capturedImagePath);
    }
  }

  void _retakePhoto() {
    setState(() {
      _capturedImagePath = null;
    });
  }

  @override
  void dispose() {
    CameraService.disposeCamera(_controller);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppHeader(
        title: widget.angleTitle,
        backgroundColor: Colors.black,
        textColor: AppColors.pureWhite,
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: AppColors.vividOrange,
              ),
            )
          : _errorMessage != null
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          size: 64,
                          color: AppColors.errorRed,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          _errorMessage!,
                          style: AppTextStyles.bodyLarge.copyWith(
                            color: AppColors.pureWhite,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24),
                        CTAButton(
                          text: 'Tekrar Dene',
                          onPressed: () {
                            setState(() {
                              _errorMessage = null;
                            });
                            _initializeCamera();
                          },
                        ),
                      ],
                    ),
                  ),
                )
              : _capturedImagePath != null
                  ? _buildPreviewScreen()
                  : _buildCameraScreen(),
    );
  }

  Widget _buildCameraScreen() {
    if (!_isInitialized || _controller == null) {
      return const Center(
        child: CircularProgressIndicator(
          color: AppColors.vividOrange,
        ),
      );
    }

    return Stack(
      children: [
        // Kamera önizlemesi
        Positioned.fill(
          child: CameraPreview(_controller!),
        ),

        // Açıklama overlay
        Positioned(
          top: 16,
          left: 16,
          right: 16,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.angleTitle,
                  style: AppTextStyles.heading3.copyWith(
                    color: AppColors.pureWhite,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.angleDescription,
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.pureWhite,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Hedef Açı: ${widget.targetAngle}°',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.softSkyBlue,
                  ),
                ),
              ],
            ),
          ),
        ),

        // Çekim butonu
        Positioned(
          bottom: 32,
          left: 0,
          right: 0,
          child: Center(
            child: GestureDetector(
              onTap: _takePicture,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.pureWhite,
                  border: Border.all(
                    color: AppColors.vividOrange,
                    width: 4,
                  ),
                ),
                child: const Icon(
                  Icons.camera,
                  size: 40,
                  color: AppColors.vividOrange,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPreviewScreen() {
    return Stack(
      children: [
        // Fotoğraf önizlemesi
        Positioned.fill(
          child: Image.file(
            File(_capturedImagePath!),
            fit: BoxFit.contain,
          ),
        ),

        // Butonlar
        Positioned(
          bottom: 32,
          left: 16,
          right: 16,
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: _retakePhoto,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.pureWhite,
                    side: const BorderSide(color: AppColors.pureWhite),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text('Yeniden Çek'),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: CTAButton(
                  text: 'Onayla',
                  onPressed: _acceptPhoto,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

