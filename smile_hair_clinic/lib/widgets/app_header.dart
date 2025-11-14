import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

/// Uygulama Header Bileşeni
/// 
/// Tüm ekranlarda kullanılacak standart header
/// - Geri ok butonu (sol)
/// - Başlık metni (orta)
/// - Opsiyonel ikon/buton (sağ)
class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;
  final Widget? trailing;
  final bool showBackButton;
  final Color? backgroundColor;
  final Color? textColor;

  const AppHeader({
    super.key,
    required this.title,
    this.onBack,
    this.trailing,
    this.showBackButton = true,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? AppColors.deepNavy;
    final txtColor = textColor ?? AppColors.pureWhite;

    return AppBar(
      backgroundColor: bgColor,
      foregroundColor: txtColor,
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: onBack ?? () => Navigator.of(context).pop(),
              color: txtColor,
            )
          : null,
      title: Text(
        title,
        style: AppTextStyles.heading3.copyWith(color: txtColor),
      ),
      actions: trailing != null
          ? [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: trailing!,
              )
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

