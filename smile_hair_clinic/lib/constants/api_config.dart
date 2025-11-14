/// API Yapılandırma
class ApiConfig {
  ApiConfig._();

  // Android Emulator için localhost erişimi
  // 10.0.2.2, Android emulator'ün host makineye erişim adresidir
  static const String baseUrl = 'http://10.0.2.2:3000/api';
  
  // iOS Simulator için:
  // static const String baseUrl = 'http://localhost:3000/api';
  
  // Gerçek cihaz için (aynı Wi-Fi ağında):
  // static const String baseUrl = 'http://192.168.1.XXX:3000/api';
  
  // Production için:
  // static const String baseUrl = 'https://your-api-domain.com/api';
}

