import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';

class PremiumButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Gradient? gradient;

  const PremiumButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        gradient: gradient ?? AppTheme.cardGradient1,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: (gradient?.colors.first ?? AppTheme.vividBlue).withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(15),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
