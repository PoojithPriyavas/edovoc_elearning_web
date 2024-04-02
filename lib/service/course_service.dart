import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/ok/courses_model.dart';

class CourseService {
  Future<List<Course>> getDataFromFirestore() async {
    try {
      var coursesQuery = FirebaseFirestore.instance.collection('courses');
      var coursesSnapshot = await coursesQuery.get();

      return coursesSnapshot.docs.map((doc) {
        return Course(
          title: doc['course_title'],
          favouriteCount: doc['course_favourite_count'],
          duration: doc['course_duration'],
          language: doc['course_language'],
          courseId: doc['course_id'],
          studentCount: doc['course_student_count'],
          subtitle: doc['course_subtitle'],
          price: doc['course_price'],
          description: doc['course_description'],
          lastUpdated: doc['course_last_updated'],
          category: doc['course_category'],
          files: doc['course_files'],
          courseLevel: doc['course_level'],
          averageRating: doc['course_average_rating'],
          ratingCount: doc['course_rating_count'],
          courseIntroductionVideo: doc['course_introduction_video'],
        );
      }).toList();
    } catch (e) {
      print('Error fetching data: $e');
      return [];
    }
  }
}
