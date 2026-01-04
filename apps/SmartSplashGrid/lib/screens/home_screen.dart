import 'package:flutter/material.dart';
import '../widgets/dashboard_card.dart';
import '../theme/app_theme.dart';
import 'onemli_bilgiler_screen.dart';
import 'sss_screen.dart';
import 'profile_screen.dart';

/// Main dashboard home screen
/// 
/// Displays 4 menu cards for navigating to different sections of the app:
/// - 7/24 Ebe Destek (Midwife Support)
/// - Önemli Bilgiler (Important Information)
/// - Konular/SSS (Topics/FAQ)
/// - Video Eğitimler (Video Tutorials)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Anne Bebek Sağlığı',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: AppTheme.deepBlue,
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              
              // Welcome text
              Text(
                'Hoş geldiniz!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
              
              const SizedBox(height: 30),
              
              // Grid view
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  children: [
                    // Card 1: 7/24 Midwife Support
                    DashboardCard(
                      title: '7/24 Ebe Destek',
                      icon: Icons.support_agent_rounded,
                      gradient: AppTheme.cardGradient1,
                      onTap: () {
                        _showComingSoonSnackBar(context, '7/24 Ebe Destek');
                      },
                    ),
                    
                    // Card 2: Important Information
                    DashboardCard(
                      title: 'Önemli Bilgiler',
                      icon: Icons.info_rounded,
                      gradient: AppTheme.cardGradient2,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const OnemliBilgilerScreen(),
                          ),
                        );
                      },
                    ),
                    
                    // Card 3: Topics/FAQ
                    DashboardCard(
                      title: 'Konular',
                      icon: Icons.question_answer_rounded,
                      gradient: AppTheme.cardGradient3,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SSSScreen(),
                          ),
                        );
                      },
                    ),
                    
                    // Card 4: Video Tutorials
                    DashboardCard(
                      title: 'Video Eğitimler',
                      icon: Icons.play_circle_rounded,
                      gradient: AppTheme.cardGradient4,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Shows a snackbar for features that are coming soon
  void _showComingSoonSnackBar(BuildContext context, String featureName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$featureName yakında eklenecek!'),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
