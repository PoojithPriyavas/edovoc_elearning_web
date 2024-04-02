class QuizModel {
  final int courseId;
  final int lessonOrder;
  final int quizId;
  final String title;
  final int totalMark;
  final int topicId;

  QuizModel(
      {required this.courseId,
      required this.lessonOrder,
      required this.quizId,
      required this.title,
      required this.totalMark,
      required this.topicId});

  factory QuizModel.fromJson(Map<String, dynamic> json) {
    return QuizModel(
        courseId: json['course_id'],
        lessonOrder: json['lesson_order'],
        quizId: json['quiz_id'],
        title: json['quiz_title'],
        totalMark: json['quiz_total_mark'],
        topicId: json['topic_id']);
  }
}
