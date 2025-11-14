import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

/// Uygulama Kart Bileşeni
/// 
/// Tutarlı kart tasarımı için kullanılır
/// - Beyaz arka plan
/// - Yuvarlatılmış köşeler
/// - Gölge efekti
/// - Özelleştirilebilir padding
class AppCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? color;
  final double? elevation;
  final double borderRadius;
  final VoidCallback? onTap;
  final double? width;

  const AppCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.color,
    this.elevation,
    this.borderRadius = 12.0,
    this.onTap,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final card = Card(
      color: color ?? AppColors.pureWhite,
      elevation: elevation ?? 2,
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(16.0),
        child: child,
      ),
    );

    Widget finalCard = card;
    if (width != null) {
      finalCard = SizedBox(width: width, child: card);
    }

    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius),
        child: finalCard,
      );
    }

    return finalCard;
  }
}

