import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'video_player_screen.dart';

class VideoLibraryScreen extends StatelessWidget {
  const VideoLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundLight,
      body: CustomScrollView(
        slivers: [
          // App Bar with gradient
          SliverAppBar(
            expandedHeight: 180,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: AppTheme.cardGradient1, // Blue gradient
                ),
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.2),
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: const Icon(
                          Icons.play_circle_filled_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Video Eğitimler',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Anne Bebek Sağlığı Rehberi',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
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
                  const SizedBox(height: 10),
                  
                  // Section Title
                  const Row(
                    children: [
                      Icon(
                        Icons.local_library_rounded,
                        color: AppTheme.vividBlue,
                        size: 28,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Tüm Eğitimler',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.deepBlue,
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // Video 1
                  _buildVideoCard(
                    context,
                    title: 'Emzirme Teknikleri',
                    description: 'Doğru emzirme pozisyonları ve teknikleri hakkında detaylı bilgi.',
                    duration: '5:30',
                    views: '1.2M görüntüleme',
                    uploadDate: '2 hafta önce',
                    videoUrl: 'assets/videos/video1.mp4',
                    thumbnailGradient: AppTheme.cardGradient1,
                    thumbnailIcon: Icons.baby_changing_station,
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Video 2
                  _buildVideoCard(
                    context,
                    title: 'Bebek Banyosu',
                    description: 'Yenidoğan bebeğinizi güvenle nasıl yıkamalısınız?',
                    duration: '4:15',
                    views: '850K görüntüleme',
                    uploadDate: '1 ay önce',
                    videoUrl: 'assets/videos/video2.mp4',
                    thumbnailGradient: AppTheme.cardGradient2,
                    thumbnailIcon: Icons.water_drop,
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Video 3
                  _buildVideoCard(
                    context,
                    title: 'Gaz Masajı',
                    description: 'Kolik bebekler için rahatlatıcı masaj teknikleri.',
                    duration: '3:45',
                    views: '620K görüntüleme',
                    uploadDate: '3 hafta önce',
                    videoUrl: 'assets/videos/video3.mp4',
                    thumbnailGradient: AppTheme.cardGradient3,
                    thumbnailIcon: Icons.spa,
                  ),
                  
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVideoCard(
    BuildContext context, {
    required String title,
    required String description,
    required String duration,
    required String views,
    required String uploadDate,
    required String videoUrl,
    required LinearGradient thumbnailGradient,
    required IconData thumbnailIcon,
  }) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => VideoPlayerScreen(
              videoTitle: title,
              videoUrl: videoUrl,
            ),
          ),
        );
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppTheme.vividBlue.withOpacity(0.08),
              blurRadius: 15,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail
            Stack(
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    gradient: thumbnailGradient,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      thumbnailIcon,
                      size: 60,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                ),
                // Play Button Overlay
                Center(
                  heightFactor: 3.6,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                // Duration badge
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      duration,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            // Video Info
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.deepBlue,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[600],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
