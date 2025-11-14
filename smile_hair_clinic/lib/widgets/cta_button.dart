import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

/// CTA (Call to Action) Buton Bileşeni
/// Turuncu, yuvarlatılmış, beyaz metinli buton
class CTAButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isEnabled;
  final double? width;
  final EdgeInsets? padding;

  const CTAButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isEnabled = true,
    this.width,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.vividOrange,
          foregroundColor: AppColors.pureWhite,
          disabledBackgroundColor: AppColors.charcoalGray.withValues(alpha: 0.3),
          disabledForegroundColor: AppColors.charcoalGray.withValues(alpha: 0.5),
          elevation: 0,
          padding: padding ?? const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.buttonText,
        ),
      ),
    );
  }
}

