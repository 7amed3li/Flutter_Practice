import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Premium color palette
  static const Color primaryBlue = Color(0xFF4b6cb7);
  static const Color deepBlue = Color(0xFF182848);
  static const Color accentCyan = Color(0xFF00d4ff);
  static const Color accentPurple = Color(0xFF9b59b6);
  static const Color cardPink = Color(0xFFe74c3c);
  static const Color cardGreen = Color(0xFF2ecc71);
  static const Color cardOrange = Color(0xFFf39c12);
  
  // Gradient definitions
  static const LinearGradient splashGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF4b6cb7),
      Color(0xFF667eea),
      Color(0xFF764ba2),
      Color(0xFF182848),
    ],
    stops: [0.0, 0.3, 0.7, 1.0],
  );
  
  static const LinearGradient cardGradient1 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF4b6cb7), Color(0xFF182848)],
  );
  
  static const LinearGradient cardGradient2 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF667eea), Color(0xFF764ba2)],
  );
  
  static const LinearGradient cardGradient3 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF2ecc71), Color(0xFF27ae60)],
  );
  
  static const LinearGradient cardGradient4 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFf39c12), Color(0xFFe74c3c)],
  );
  
  // Light theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryBlue,
        brightness: Brightness.light,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(),
      scaffoldBackgroundColor: const Color(0xFFF5F7FA),
      cardTheme: CardThemeData(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
      ),
    );
  }
}
