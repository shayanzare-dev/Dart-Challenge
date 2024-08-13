class Exam {
  static int countId = 0;

  final int id;
  final String courseName;
  final int studentNationalCode;
  final int teacherNationalCode;
  final int score;

  Exam(
      {required this.courseName,
      required this.studentNationalCode,
      required this.teacherNationalCode,
      required this.score})
      : id = ++countId,
        assert(score <= 20 && score >= 0, 'invalid score(0 ta 20)');
}
