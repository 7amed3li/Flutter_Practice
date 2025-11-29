import 'package:flutter/material.dart';
import '../widgets/dashboard_card.dart';
import '../theme/app_theme.dart';

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
          'Dashboard',
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
                'Welcome Back!',
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
                  children: const [
                    DashboardCard(
                      title: 'Analytics',
                      icon: Icons.analytics_rounded,
                      gradient: AppTheme.cardGradient1,
                    ),
                    DashboardCard(
                      title: 'Reports',
                      icon: Icons.assessment_rounded,
                      gradient: AppTheme.cardGradient2,
                    ),
                    DashboardCard(
                      title: 'Settings',
                      icon: Icons.settings_rounded,
                      gradient: AppTheme.cardGradient3,
                    ),
                    DashboardCard(
                      title: 'Profile',
                      icon: Icons.person_rounded,
                      gradient: AppTheme.cardGradient4,
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
