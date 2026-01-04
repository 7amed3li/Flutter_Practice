import 'package:flutter/material.dart';
import '../core/core.dart';
import '../theme/app_theme.dart';

/// Screen displaying important breastfeeding information
/// 
/// Shows educational content about insufficient milk production
/// and common breastfeeding problems with solutions.
class OnemliBilgilerScreen extends StatelessWidget {
  const OnemliBilgilerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Gradient App Bar
          SliverAppBar(
            expandedHeight: 180,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Önemli Bilgiler',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: AppTheme.splashGradient,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: -30,
                      bottom: -30,
                      child: Icon(
                        Icons.info_outline,
                        size: 180,
                        color: Colors.white.withOpacity(0.1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),

          // Content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Section 1: Insufficient Milk Production
                  _buildSectionCard(
                    context,
                    icon: Icons.water_drop_outlined,
                    iconColor: const Color(0xFF4b6cb7),
                    title: AppData.importantTopics[0].title,
                    content: AppData.importantTopics[0].content,
                    bulletPoints: AppData.importantTopics[0].bulletPoints,
                  ),

                  const SizedBox(height: 24),

                  // Section 2: Breastfeeding Problems
                  _buildSectionHeader(
                    context,
                    icon: Icons.medical_information_outlined,
                    title: 'Emzirme Sorunları',
                  ),
                  
                  const SizedBox(height: 16),

                  // Problem cards using ExpansionTile
                  ...AppData.breastfeedingProblems.map(
                    (problem) => _buildExpandableProblemCard(context, problem),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionCard(
    BuildContext context, {
    required IconData icon,
    required Color iconColor,
    required String title,
    required String content,
    List<String>? bulletPoints,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: iconColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(icon, color: iconColor, size: 28),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.deepBlue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            // Content
            Text(
              content,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[700],
                height: 1.6,
              ),
            ),

            // Bullet points
            if (bulletPoints != null && bulletPoints.isNotEmpty) ...[
              const SizedBox(height: 16),
              ...bulletPoints.map(
                (point) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 6),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: iconColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          point,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(
    BuildContext context, {
    required IconData icon,
    required String title,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: AppTheme.cardGradient2,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.white, size: 24),
        ),
        const SizedBox(width: 12),
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppTheme.deepBlue,
          ),
        ),
      ],
    );
  }

  Widget _buildExpandableProblemCard(
    BuildContext context,
    BreastfeedingTopic problem,
  ) {
    final iconData = _getIconFromName(problem.iconName);
    final cardColor = _getColorForProblem(problem.id);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            leading: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: cardColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(iconData, color: cardColor, size: 24),
            ),
            title: Text(
              problem.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppTheme.deepBlue,
              ),
            ),
            children: [
              Text(
                problem.content,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getIconFromName(String name) {
    switch (name) {
      case 'block':
        return Icons.block;
      case 'healing':
        return Icons.healing;
      case 'thermostat':
        return Icons.thermostat;
      case 'adjust':
        return Icons.adjust;
      case 'waves':
        return Icons.waves;
      case 'water_drop':
        return Icons.water_drop_outlined;
      default:
        return Icons.info_outline;
    }
  }

  Color _getColorForProblem(String id) {
    switch (id) {
      case 'blockage':
        return const Color(0xFFe74c3c);
      case 'nipple_pain':
        return const Color(0xFFf39c12);
      case 'mastitis':
        return const Color(0xFF9b59b6);
      case 'inverted_nipple':
        return const Color(0xFF3498db);
      case 'hyperlactation':
        return const Color(0xFF2ecc71);
      default:
        return const Color(0xFF4b6cb7);
    }
  }
}
