import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/app_header.dart';
import '../../widgets/cta_button.dart';
import '../../services/auth_service.dart';
import '../main_navigation_screen.dart';
import 'register_screen.dart';

/// Giriş Ekranı
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      try {
        final result = await AuthService.login(
          email: _emailController.text.trim(),
          password: _passwordController.text,
        );

        if (mounted) {
          setState(() {
            _isLoading = false;
          });

          if (result['success'] == true) {
            // Başarılı giriş
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const MainNavigationScreen(),
              ),
            );
          } else {
            // Hata mesajı göster
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(result['message'] ?? 'Giriş başarısız'),
                backgroundColor: AppColors.errorRed,
              ),
            );
          }
        }
      } catch (e) {
        if (mounted) {
          setState(() {
            _isLoading = false;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Bağlantı hatası: ${e.toString()}'),
              backgroundColor: AppColors.errorRed,
            ),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhite,
      appBar: const AppHeader(
        title: 'Giriş Yap',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 32),
                
                // Logo veya Başlık
                const Icon(
                  Icons.local_hospital,
                  size: 80,
                  color: AppColors.softSkyBlue,
                ),
                const SizedBox(height: 24),
                
                Text(
                  'Hoş Geldiniz',
                  style: AppTextStyles.heading1,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Hesabınıza giriş yapın',
                  style: AppTextStyles.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),
                
                // Email/Telefon Input
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email veya Telefon',
                    hintText: 'ornek@email.com',
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen email veya telefon giriniz';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                
                // Şifre Input
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: 'Şifre',
                    hintText: '••••••••',
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen şifrenizi giriniz';
                    }
                    if (value.length < 6) {
                      return 'Şifre en az 6 karakter olmalıdır';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                
                // Şifremi Unuttum
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // TODO: Navigate to forgot password
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Şifre sıfırlama özelliği yakında eklenecek'),
                        ),
                      );
                    },
                    child: Text(
                      'Şifremi Unuttum',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.vividOrange,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                
                // Giriş Yap Butonu
                CTAButton(
                  text: _isLoading ? 'Giriş yapılıyor...' : 'Giriş Yap',
                  onPressed: _isLoading ? () {} : _handleLogin,
                  isEnabled: !_isLoading,
                ),
                const SizedBox(height: 24),
                
                // Kayıt Ol Linki
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hesabınız yok mu? ',
                      style: AppTextStyles.bodyMedium,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Kayıt Ol',
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.vividOrange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

