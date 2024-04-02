import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edvoc_elearning/model/ok/assignment_model.dart';

class AssignmentService {
  Future<List<AssignmentModel>> getAssignmentWithCourse(int courseId) async {
    print("course id is  $courseId");
    try {
      var courseQuery = FirebaseFirestore.instance
          .collection('assignment')
          .where('course_id', isEqualTo: courseId);
      var coursesSnapshot = await courseQuery.get();

      final assignemnt = coursesSnapshot.docs.map((doc) {
        return AssignmentModel(
            courseId: doc['course_id'],
            lessonOrder: doc['lesson_order'],
            assignmentId: doc['assignment_id'],
            question: doc['assignment_question'],
            topicId: doc['topic_id'],
            title: doc['assignment_title']);
      }).toList();

      print("assignment is $assignemnt");

      return assignemnt;
    } catch (e) {
      print('Error fetching data: $e');
      return [];
    }
  }
}
