import '../services/api_service.dart';

/// Authentication Service
/// 
/// Giriş ve kayıt işlemleri
class AuthService {
  // Kayıt Ol
  static Future<Map<String, dynamic>> register({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) async {
    try {
      final response = await ApiService.post(
        '/auth/register',
        {
          'name': name,
          'email': email,
          'phone': phone,
          'password': password,
        },
      );

      if (response['success'] == true) {
        // Token'ı kaydet
        final token = response['data']['token'] as String;
        await ApiService.saveToken(token);

        return {
          'success': true,
          'message': response['message'] ?? 'Kayıt başarılı',
          'user': response['data']['user'],
        };
      } else {
        return {
          'success': false,
          'message': response['message'] ?? 'Kayıt başarısız',
        };
      }
    } catch (e) {
      return {
        'success': false,
        'message': e.toString(),
      };
    }
  }

  // Giriş Yap
  static Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await ApiService.post(
        '/auth/login',
        {
          'email': email,
          'password': password,
        },
      );

      if (response['success'] == true) {
        // Token'ı kaydet
        final token = response['data']['token'] as String;
        await ApiService.saveToken(token);

        return {
          'success': true,
          'message': response['message'] ?? 'Giriş başarılı',
          'user': response['data']['user'],
        };
      } else {
        return {
          'success': false,
          'message': response['message'] ?? 'Giriş başarısız',
        };
      }
    } catch (e) {
      return {
        'success': false,
        'message': e.toString(),
      };
    }
  }

  // Çıkış Yap
  static Future<void> logout() async {
    await ApiService.deleteToken();
  }

  // Kullanıcı Bilgilerini Getir
  static Future<Map<String, dynamic>> getCurrentUser() async {
    try {
      final response = await ApiService.get('/auth/me');

      if (response['success'] == true) {
        return {
          'success': true,
          'user': response['data']['user'],
        };
      } else {
        return {
          'success': false,
          'message': response['message'] ?? 'Kullanıcı bilgileri alınamadı',
        };
      }
    } catch (e) {
      return {
        'success': false,
        'message': e.toString(),
      };
    }
  }

  // Token kontrolü
  static Future<bool> isLoggedIn() async {
    final token = await ApiService.getToken();
    return token != null && token.isNotEmpty;
  }
}

