import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/premium_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppTheme.backgroundLight,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              // Header Section with Logo
              Center(
                child: FadeIn(
                  delay: 200,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/appstore.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/dashboard');
                      },
                      child: Text(
                        'Misafir Olarak Devam Et',
                        style: GoogleFonts.poppins(
                          color: AppTheme.vividBlue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  FadeIn(
                    delay: 300,
                    child: Text(
                      'Tekrar Hoşgeldiniz,',
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.deepBlue,
                      ),
                    ),
                  ),
                  FadeIn(
                    delay: 400,
                    child: Text(
                      'Babyom dünyasına giriş yapın',
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
              
              // Form Section
              FadeIn(
                delay: 600,
                child: Column(
                  children: [
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
                    const SizedBox(height: 15),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Şifremi Unuttum?',
                          style: GoogleFonts.poppins(
                            color: AppTheme.vividBlue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    PremiumButton(
                      text: 'GİRİŞ YAP',
                      onPressed: () {
                        // TODO: Implement Login Logic
                      },
                      gradient: const LinearGradient(
                        colors: [AppTheme.vividBlue, Color(0xFF4FC3F7)],
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 40),
              
              // Footer Section
              FadeIn(
                delay: 800,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hesabınız yok mu? ",
                        style: GoogleFonts.poppins(
                          color: Colors.grey[600],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          'Kayıt Ol',
                          style: GoogleFonts.poppins(
                            color: AppTheme.softPink,
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

// Simple FadeIn Animation Widget
class FadeIn extends StatefulWidget {
  final Widget child;
  final int delay;

  const FadeIn({super.key, required this.child, required this.delay});

  @override
  State<FadeIn> createState() => _FadeInState();
}

class _FadeInState extends State<FadeIn> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    Future.delayed(Duration(milliseconds: widget.delay), () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: SlideTransition(
        position: _slideAnimation,
        child: widget.child,
      ),
    );
  }
}
