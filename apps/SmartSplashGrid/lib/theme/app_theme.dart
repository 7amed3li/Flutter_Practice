import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Babyom / Anne Bebe Brand Palette
  static const Color vividBlue = Color(0xFF009BEF); // Main Brand Blue
  static const Color softPink = Color(0xFFFF8FAB); // Accent Pink
  static const Color deepBlue = Color(0xFF005A8D); // Darker Blue for text/contrast
  static const Color surfaceWhite = Color(0xFFFFFFFF);
  static const Color backgroundLight = Color(0xFFF2F9FF); // Very subtle blue tint

  // Gradients
  static const LinearGradient splashGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      vividBlue,
      Color(0xFF007ECC), // Slightly darker blue for depth
    ],
  );

  static const LinearGradient cardGradient1 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [vividBlue, Color(0xFF4FC3F7)],
  );

  static const LinearGradient cardGradient2 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [softPink, Color(0xFFFFB2C9)],
  );
  
  static const LinearGradient cardGradient3 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF26C6DA), Color(0xFF80DEEA)], // Teal/Cyan
  );

  static const LinearGradient cardGradient4 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFB74D), Color(0xFFFFCC80)], // Warm Orange
  );

  // Light theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: vividBlue,
        primary: vividBlue,
        secondary: softPink,
        brightness: Brightness.light,
        surface: surfaceWhite,
      ),
      scaffoldBackgroundColor: backgroundLight,
      textTheme: GoogleFonts.poppinsTextTheme(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: deepBlue),
        titleTextStyle: TextStyle(
          color: deepBlue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 4,
        shadowColor: vividBlue.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
