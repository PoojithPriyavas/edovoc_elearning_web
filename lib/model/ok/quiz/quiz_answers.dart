class QuizAnswer {
  final String id;
  final String answerOne;
  final String answerTwo;
  final String answerThree;
  final String answerFour;
  final int questionId;

  QuizAnswer({
    required this.id,
    required this.answerOne,
    required this.answerTwo,
    required this.answerThree,
    required this.answerFour,
    required this.questionId,
  });

  factory QuizAnswer.fromJson(Map<String, dynamic> json) {
    return QuizAnswer(
      id: json['Document ID'],
      answerOne: json['answer_one'],
      answerTwo: json['answer_two'],
      answerThree: json['answer_three'],
      answerFour: json['answer_four'],
      questionId: json['quiz_question_id'],
    );
  }
}
