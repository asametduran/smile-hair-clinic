import 'dart:io';
import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

/// Kamera Servisi
/// 
/// Kamera izinleri ve fotoğraf çekme işlemleri
class CameraService {
  CameraService._();

  // Kamera izinlerini kontrol et
  static Future<bool> checkCameraPermission() async {
    final status = await Permission.camera.status;
    if (status.isGranted) {
      return true;
    }

    if (status.isDenied) {
      final result = await Permission.camera.request();
      return result.isGranted;
    }

    return false;
  }

  // Depolama izinlerini kontrol et
  static Future<bool> checkStoragePermission() async {
    if (Platform.isAndroid) {
      if (await Permission.photos.isGranted) {
        return true;
      }
      final result = await Permission.photos.request();
      return result.isGranted;
    }
    return true; // iOS için gerekli değil
  }

  // Tüm izinleri kontrol et
  static Future<bool> checkAllPermissions() async {
    final camera = await checkCameraPermission();
    final storage = await checkStoragePermission();
    return camera && storage;
  }

  // Kullanılabilir kameraları listele
  static Future<List<CameraDescription>> getAvailableCameras() async {
    try {
      return await availableCameras();
    } catch (e) {
      throw Exception('Kamera bulunamadı: $e');
    }
  }

  // Kamera controller'ı başlat
  static Future<CameraController> initializeCamera({
    CameraLensDirection direction = CameraLensDirection.back,
    ResolutionPreset resolution = ResolutionPreset.high,
  }) async {
    final cameras = await getAvailableCameras();
    
    // Arka kamera bul
    CameraDescription? camera;
    if (direction == CameraLensDirection.back) {
      camera = cameras.firstWhere(
        (c) => c.lensDirection == CameraLensDirection.back,
        orElse: () => cameras.first,
      );
    } else {
      camera = cameras.firstWhere(
        (c) => c.lensDirection == CameraLensDirection.front,
        orElse: () => cameras.first,
      );
    }

    final controller = CameraController(
      camera,
      resolution,
      enableAudio: false,
    );

    await controller.initialize();
    return controller;
  }

  // Fotoğraf çek
  static Future<String> takePicture(CameraController controller) async {
    if (!controller.value.isInitialized) {
      throw Exception('Kamera başlatılmadı');
    }

    if (controller.value.isTakingPicture) {
      throw Exception('Fotoğraf çekiliyor, lütfen bekleyin');
    }

    try {
      final XFile image = await controller.takePicture();
      return image.path;
    } catch (e) {
      throw Exception('Fotoğraf çekilemedi: $e');
    }
  }

  // Fotoğrafı geçici dizine kaydet
  static Future<String> savePictureToTemp(String imagePath) async {
    final directory = await getTemporaryDirectory();
    final fileName = path.basename(imagePath);
    final newPath = path.join(directory.path, fileName);
    
    final file = File(imagePath);
    await file.copy(newPath);
    
    return newPath;
  }

  // Kamera controller'ı temizle
  static Future<void> disposeCamera(CameraController? controller) async {
    if (controller != null && controller.value.isInitialized) {
      await controller.dispose();
    }
  }
}

