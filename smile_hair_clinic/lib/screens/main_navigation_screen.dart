import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
import 'home/home_screen.dart';
import 'appointment/appointment_screen.dart';
import 'health/health_screen.dart';
import 'notifications/notifications_screen.dart';
import 'profile/profile_screen.dart';

/// Ana Navigasyon Ekranı
/// 
/// Bottom navigation bar ile sayfa geçişlerini yönetir
class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const AppointmentScreen(),
    const HealthScreen(),
    const NotificationsScreen(),
    const ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: AppBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}

