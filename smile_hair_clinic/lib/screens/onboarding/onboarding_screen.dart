import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/cta_button.dart';
import '../main_navigation_screen.dart';
import '../auth/login_screen.dart';
import 'onboarding_page_1.dart';
import 'onboarding_page_2.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = [
    const OnboardingPage1(),
    const OnboardingPage2(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    // Mevcut sayfa kontrolü
    final currentPage = _pageController.hasClients 
        ? _pageController.page?.round() ?? _currentPage
        : _currentPage;
    
    if (currentPage < _pages.length - 1) {
      // Bir sonraki sayfaya geç
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Onboarding tamamlandı, ana navigasyon ekranına yönlendir
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const MainNavigationScreen(),
        ),
      );
    }
  }
  
  bool get _isLastPage => _currentPage >= _pages.length - 1;
  
  void _goToLogin() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Sayfa göstergeleri
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _pages.length,
                  (index) => _buildPageIndicator(index),
                ),
              ),
            ),
            
            // Sayfa içeriği
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: _pages.length,
                itemBuilder: (context, index) => _pages[index],
              ),
            ),
            
            // Alt butonlar
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  CTAButton(
                    text: _isLastPage ? 'BAŞLA' : 'İLERİ',
                    onPressed: _nextPage,
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: _goToLogin,
                    child: Text(
                      'Giriş Yap',
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.charcoalGray,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageIndicator(int index) {
    return Container(
      width: 8,
      height: 8,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPage == index
            ? AppColors.pureWhite
            : AppColors.pureWhite.withValues(alpha: 0.3),
        border: Border.all(
          color: AppColors.pureWhite,
          width: 1,
        ),
      ),
    );
  }
}

