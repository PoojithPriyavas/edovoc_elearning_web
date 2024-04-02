import 'package:cloud_firestore/cloud_firestore.dart';

class Course {
  final String category;
  final String description;
  final String duration;
  final int favouriteCount;
  final String files;
  final int courseId;
  final String language;
  final Timestamp lastUpdated;
  final int price;
  final int studentCount;
  final String subtitle;
  final String title;
  final String courseLevel;
  final double averageRating;
  final int ratingCount;
  final String courseIntroductionVideo;

  Course(
      {required this.category,
      required this.description,
      required this.duration,
      required this.favouriteCount,
      required this.files,
      required this.courseId,
      required this.language,
      required this.lastUpdated,
      required this.price,
      required this.studentCount,
      required this.subtitle,
      required this.title,
      required this.courseLevel,
      required this.averageRating,
      required this.ratingCount,
      required this.courseIntroductionVideo});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
        category: json['course_category'],
        description: json['course_description'],
        duration: json['course_duration'],
        favouriteCount: json['course_favourite_count'],
        files: json['course_files'],
        courseId: json['course_id'],
        language: json['course_language'],
        lastUpdated: json['course_last_updated'],
        price: json['course_price'],
        studentCount: json['course_student_count'],
        subtitle: json['course_subtitle'],
        title: json['course_title'],
        courseLevel: json['course_level'],
        averageRating: json['course_average_rating'],
        ratingCount: json['course_rating_count'],
        courseIntroductionVideo: json['course_introduction_video']);
  }
}
