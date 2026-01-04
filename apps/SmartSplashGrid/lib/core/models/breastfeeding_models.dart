/// Model class representing a breastfeeding information topic
/// 
/// Used except for organizing and displaying educational content
/// about breastfeeding issues and solutions.
class BreastfeedingTopic {
  /// Unique identifier for the topic
  final String id;
  
  /// Display title of the topic
  final String title;
  
  /// Icon to display with the topic
  final String iconName;
  
  /// Detailed description or content
  final String content;
  
  /// Sub-topics or bullet points (optional)
  final List<String>? bulletPoints;

  const BreastfeedingTopic({
    required this.id,
    required this.title,
    required this.iconName,
    required this.content,
    this.bulletPoints,
  });
}

/// Model class representing a FAQ item
class FAQItem {
  /// The question
  final String question;
  
  /// The answer/response
  final String answer;
  
  /// Icon name for display
  final String iconName;

  const FAQItem({
    required this.question,
    required this.answer,
    required this.iconName,
  });
}

/// Model class representing a video tutorial
class VideoTutorial {
  /// Display title
  final String title;
  
  /// Description of the video content
  final String description;
  
  /// Path to local video file
  final String videoPath;
  
  /// Path to thumbnail image
  final String thumbnailPath;
  
  /// Duration in seconds
  final int durationSeconds;

  const VideoTutorial({
    required this.title,
    required this.description,
    required this.videoPath,
    required this.thumbnailPath,
    required this.durationSeconds,
  });
}
