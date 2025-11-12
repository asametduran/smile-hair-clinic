import 'dart:async';
import 'package:sensors_plus/sensors_plus.dart';

class SensorFusionService {
  StreamSubscription? _accelerometerSub;
  StreamSubscription? _gyroscopeSub;

  double pitch = 0.0;
  double roll = 0.0;

  void startListening() {
    _accelerometerSub = accelerometerEvents.listen((event) {
      pitch = event.x;
      roll = event.y;
    });

    _gyroscopeSub = gyroscopeEvents.listen((event) {
      // Sensör verisi ile filtreleme yapılabilir
    });
  }

  void stopListening() {
    _accelerometerSub?.cancel();
    _gyroscopeSub?.cancel();
  }
}
