import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/api_config.dart';

/// API Service
/// 
/// Backend API ile iletişim için servis
class ApiService {
  static const String baseUrl = ApiConfig.baseUrl;

  // Token'ı al
  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('auth_token');
  }

  // Token'ı kaydet
  static Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_token', token);
  }

  // Token'ı sil
  static Future<void> deleteToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_token');
  }

  // Auth headers
  static Future<Map<String, String>> getHeaders({bool includeAuth = false}) async {
    final headers = {
      'Content-Type': 'application/json',
    };

    if (includeAuth) {
      final token = await getToken();
      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }
    }

    return headers;
  }

  // POST Request
  static Future<Map<String, dynamic>> post(
    String endpoint,
    Map<String, dynamic> body, {
    bool includeAuth = false,
  }) async {
    try {
      final headers = await getHeaders(includeAuth: includeAuth);
      final response = await http.post(
        Uri.parse('$baseUrl$endpoint'),
        headers: headers,
        body: jsonEncode(body),
      );

      final data = jsonDecode(response.body) as Map<String, dynamic>;

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return data;
      } else {
        throw Exception(data['message'] ?? 'Bir hata oluştu');
      }
    } catch (e) {
      throw Exception('Bağlantı hatası: ${e.toString()}');
    }
  }

  // GET Request
  static Future<Map<String, dynamic>> get(
    String endpoint, {
    bool includeAuth = true,
  }) async {
    try {
      final headers = await getHeaders(includeAuth: includeAuth);
      final response = await http.get(
        Uri.parse('$baseUrl$endpoint'),
        headers: headers,
      );

      final data = jsonDecode(response.body) as Map<String, dynamic>;

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return data;
      } else {
        throw Exception(data['message'] ?? 'Bir hata oluştu');
      }
    } catch (e) {
      throw Exception('Bağlantı hatası: ${e.toString()}');
    }
  }
}

