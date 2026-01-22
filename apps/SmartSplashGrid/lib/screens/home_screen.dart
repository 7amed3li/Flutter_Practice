import 'package:flutter/material.dart';
import '../widgets/dashboard_card.dart';
import '../theme/app_theme.dart';
import 'onemli_bilgiler_screen.dart';
import 'sss_screen.dart';
import 'video_library_screen.dart';

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
      backgroundColor: AppTheme.backgroundLight,
      appBar: AppBar(
        title: const Text(
          'Anne Bebek Sağlığı',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: AppTheme.deepBlue,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded, color: AppTheme.deepBlue),
            onPressed: () {},
          ),
        ],
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
                  fontSize: 16,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Grid view
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.85, // Taller cards
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
                      icon: Icons.menu_book_rounded,
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
                      title: 'Sorular & Cevaplar',
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
                    
                    // Card 4: Video Tutorials (Previously Profile)
                    DashboardCard(
                      title: 'Video Eğitimler',
                      icon: Icons.play_lesson_rounded,
                      gradient: AppTheme.cardGradient4,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const VideoLibraryScreen(),
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
        backgroundColor: AppTheme.deepBlue,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
