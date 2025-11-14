import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

/// Alt Navigasyon Menüsü
/// 
/// 5 sekme içeren bottom navigation bar
/// - Ana Sayfa
/// - Randevu
/// - Sağlık
/// - Bildirimler
/// - Profil
class AppBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AppBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.pureWhite,
      selectedItemColor: AppColors.vividOrange,
      unselectedItemColor: AppColors.charcoalGray,
      selectedLabelStyle: AppTextStyles.caption.copyWith(
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: AppTextStyles.caption,
      elevation: 8,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          activeIcon: Icon(Icons.home),
          label: 'Ana Sayfa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          activeIcon: Icon(Icons.calendar_today),
          label: 'Randevu',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          activeIcon: Icon(Icons.favorite),
          label: 'Sağlık',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          activeIcon: Icon(Icons.notifications),
          label: 'Bildirimler',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          activeIcon: Icon(Icons.person),
          label: 'Profil',
        ),
      ],
    );
  }
}

