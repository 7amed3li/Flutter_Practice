import 'package:flutter/material.dart';
import '../widgets/dashboard_card.dart';
import '../theme/app_theme.dart';
import 'profile_screen.dart';

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
                    const DashboardCard(
                      title: '7/24 Ebe Destek',
                      icon: Icons.analytics_rounded,
                      gradient: AppTheme.cardGradient1,
                    ),
                    const DashboardCard(
                      title: 'Önemli Bilgiler',
                      icon: Icons.assessment_rounded,
                      gradient: AppTheme.cardGradient2,
                    ),
                    const DashboardCard(
                      title: 'Konular',
                      icon: Icons.settings_rounded,
                      gradient: AppTheme.cardGradient3,
                    ),
                    DashboardCard(
                      title: 'Video Eğitimler',
                      icon: Icons.person_rounded,
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
}
