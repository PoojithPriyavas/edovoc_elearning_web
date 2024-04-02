class TopicsModel {
  final int courseId;
  final int topicId;
  final int topicOrder;

  final String title;

  TopicsModel(
      {required this.courseId,
      required this.topicId,
      required this.title,
      required this.topicOrder});

  factory TopicsModel.fromJson(Map<String, dynamic> json) {
    return TopicsModel(
        courseId: json['course_id'],
        topicId: json["topic_id"],
        title: json['topic_title'],
        topicOrder: json['topic_order']);
  }
}
