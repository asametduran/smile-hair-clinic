import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:audioplayers/audioplayers.dart';

class CaptureProvider extends ChangeNotifier {
  CameraController? cameraController;
  bool _isCapturing = false;
  bool get isCapturing => _isCapturing;

  final AudioPlayer _audioPlayer = AudioPlayer();

  void startCapture(CameraController controller) {
    cameraController = controller;
    _isCapturing = true;
    notifyListeners();
    // Buraya otomatik fotoğraf çekme ve sensör kontrolü eklenebilir
  }

  void stopCapture() {
    _isCapturing = false;
    notifyListeners();
  }

  Future<void> playSound(String path) async {
    await _audioPlayer.play(AssetSource(path));
  }
}
