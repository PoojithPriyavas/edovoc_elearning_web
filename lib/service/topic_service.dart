import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edvoc_elearning/model/ok/topics_model.dart';

class TopicService {
  Future<List<TopicsModel>> getAssignmentWithCourse(int courseId) async {
    print("course id is  $courseId");
    try {
      var topicsQuery = FirebaseFirestore.instance
          .collection('topics')
          .where('course_id', isEqualTo: courseId);
      var topicsSnapshot = await topicsQuery.get();

      final topics = topicsSnapshot.docs.map((doc) {
        return TopicsModel(
            courseId: doc['course_id'],
            topicId: doc['topic_id'],
            topicOrder: doc['topic_order'],
            title: doc['topic_title']);
      }).toList();

      print("topics  is $topics");

      return topics;
    } catch (e) {
      print('Error fetching data: $e');
      return [];
    }
  }
}
