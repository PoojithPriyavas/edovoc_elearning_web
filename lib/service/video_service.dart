import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edvoc_elearning/model/ok/video_model.dart';

class VideoService {
  Future<List<VideoModel>> getVideoWithCourse(int courseId) async {
    print("video is id id   $courseId");
    try {
      var videosQuery = FirebaseFirestore.instance
          .collection('video')
          .where('course_id', isEqualTo: courseId);
      var videosSnapshot = await videosQuery.get();

      final video = videosSnapshot.docs.map((doc) {
        return VideoModel(
            courseId: doc['course_id'],
            lessonOrder: doc['lesson_order'],
            description: doc['video_description'],
            videoId: doc['video_id'],
            length: doc['video_length'],
            link: doc['video_link'],
            topicId: doc['topic_id'],
            title: doc['video_title']);
      }).toList();

      print("videos is $video");

      return video;
    } catch (e) {
      print('Error fetching data: $e');
      return [];
    }
  }
}
