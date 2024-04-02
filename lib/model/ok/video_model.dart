class VideoModel {
  final int courseId;
  final int lessonOrder;
  final String description;
  final int videoId;
  final int length;
  final String link;
  final String title;
  final int topicId;

  VideoModel(
      {required this.courseId,
      required this.lessonOrder,
      required this.description,
      required this.videoId,
      required this.length,
      required this.link,
      required this.title,
      required this.topicId});

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
        courseId: json['course_id'],
        lessonOrder: json['lesson_order'],
        description: json['video_description'],
        videoId: json['video_id'],
        length: json['video_length'],
        link: json['video_link'],
        title: json['video_title'],
        topicId: json['topic_id']);
  }
}
