import 'package:flutter/foundation.dart';
import '../services/firebase_service.dart';

class AuthProvider extends ChangeNotifier {
  final FirebaseService _firebaseService = FirebaseService();

  // Kullanıcı login durumu
  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  Future<void> login(String email, String password) async {
    _isLoggedIn = await _firebaseService.login(email, password);
    notifyListeners();
  }

  Future<void> register(String email, String password) async {
    _isLoggedIn = await _firebaseService.register(email, password);
    notifyListeners();
  }

  void logout() {
    _firebaseService.logout();
    _isLoggedIn = false;
    notifyListeners();
  }
}
