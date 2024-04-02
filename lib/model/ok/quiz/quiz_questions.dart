class QuizQuestion {
  final String id;
  final String answer;
  final int mark;
  final int duration;
  final int quizId;
  final String question;
  final int questionId;

  QuizQuestion({
    required this.id,
    required this.answer,
    required this.mark,
    required this.duration,
    required this.quizId,
    required this.question,
    required this.questionId,
  });

  factory QuizQuestion.fromJson(Map<String, dynamic> json) {
    return QuizQuestion(
      id: json['Document ID'],
      answer: json['quis_question_answer'],
      mark: json['quis_question_mark'],
      duration: json['quiz_duration'],
      quizId: json['quiz_id'],
      question: json['quiz_question'],
      questionId: json['quiz_question_id'],
    );
  }
}
