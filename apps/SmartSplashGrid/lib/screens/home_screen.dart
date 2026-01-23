import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
                        _launchWhatsApp(context);
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

  /// Launches WhatsApp with the specified number
  Future<void> _launchWhatsApp(BuildContext context) async {
    // Show a loading/feedback message immediately
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('WhatsApp\'a yönlendiriliyor...'),
        duration: Duration(seconds: 2),
        backgroundColor: AppTheme.deepBlue,
      ),
    );

    // Create the URL with a pre-filled message
    // Using wa.me format: https://wa.me/<number>?text=<urlencodedtext>
    final String message = 'Merhaba, destek almak istiyorum.';
    final Uri whatsappUrl = Uri.parse(
      'https://wa.me/905336359610?text=${Uri.encodeComponent(message)}',
    );

    try {
      if (!await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication)) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).clearSnackBars(); // Clear the "redirecting" message
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('WhatsApp açılamadı veya yüklü değil.'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Hata oluştu: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
