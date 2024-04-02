class AssignmentModel {
  final int assignmentId;
  final String question;
  final String title;
  final int courseId;
  final int lessonOrder;
  final int topicId;

  AssignmentModel(
      {required this.assignmentId,
      required this.question,
      required this.title,
      required this.courseId,
      required this.lessonOrder,
      required this.topicId});

  factory AssignmentModel.fromJson(Map<String, dynamic> json) {
    return AssignmentModel(
        assignmentId: json['assignment_id'],
        question: json['assignment_question'],
        title: json['assignment_title'],
        courseId: json['course_id'],
        lessonOrder: json['lesson_order'],
        topicId: json['topic_id']);
  }
}
