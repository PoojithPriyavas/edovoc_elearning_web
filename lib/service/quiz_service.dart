import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edvoc_elearning/model/ok/quiz/quiz_model.dart';

class QuizService {
  Future<List<QuizModel>> getAssignmentWithCourse(int courseId) async {
    print("course id is  $courseId");
    try {
      var quizQuery = FirebaseFirestore.instance
          .collection('quiz')
          .where('course_id', isEqualTo: courseId);
      var quizSnapshot = await quizQuery.get();

      final quiz = quizSnapshot.docs.map((doc) {
        return QuizModel(
            courseId: doc['course_id'],
            lessonOrder: doc['lesson_order'],
            quizId: doc['quiz_id'],
            totalMark: doc['quiz_total_mark'],
            topicId: doc['topic_id'],
            title: doc['quiz_title']);
      }).toList();

      print("assignment is $quiz");

      return quiz;
    } catch (e) {
      print('Error fetching data: $e');
      return [];
    }
  }
}
