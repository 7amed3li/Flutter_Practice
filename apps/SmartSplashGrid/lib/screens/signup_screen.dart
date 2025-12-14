import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/premium_button.dart';
import 'login_screen.dart'; // Import for FadeIn widget

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: AppTheme.deepBlue),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFFF5F7FA),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeIn(
                    delay: 200,
                    child: Text(
                      'Hesap Oluştur',
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.deepBlue,
                      ),
                    ),
                  ),
                  FadeIn(
                    delay: 400,
                    child: Text(
                      'Başlamak için kayıt olun!',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.grey[600],
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              
              FadeIn(
                delay: 600,
                child: Column(
                  children: [
                    const CustomTextField(
                      hintText: 'Ad Soyad',
                      prefixIcon: Icons.person_outline,
                    ),
                    const SizedBox(height: 20),
                    const CustomTextField(
                      hintText: 'E-posta Adresi',
                      prefixIcon: Icons.email_outlined,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 20),
                    const CustomTextField(
                      hintText: 'Şifre',
                      prefixIcon: Icons.lock_outline,
                      isPassword: true,
                    ),
                    const SizedBox(height: 20),
                    const CustomTextField(
                      hintText: 'Şifreyi Onayla',
                      prefixIcon: Icons.lock_outline,
                      isPassword: true,
                    ),
                    const SizedBox(height: 40),
                    PremiumButton(
                      text: 'KAYIT OL',
                      onPressed: () {
                        // TODO: Implement Signup Logic
                      },
                      gradient: AppTheme.cardGradient2, // Different gradient for variety
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 40),
              
              FadeIn(
                delay: 800,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Zaten hesabınız var mı? ",
                        style: GoogleFonts.poppins(
                          color: Colors.grey[600],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Giriş Yap',
                          style: GoogleFonts.poppins(
                            color: AppTheme.primaryBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
