import 'course.dart';
import 'exam.dart';
import 'student.dart';
import 'teacher.dart';

class School {
  final List<Course> _courses = [
    Course(title: 'math'),
    Course(title: 'english'),
    Course(title: 'programming'),
    Course(title: 'algorithm'),
    Course(title: 'data base')
  ];

  final List<Student> _students = [];
  final List<Teacher> _teachers = [];
  final List<Exam> _exams = [];
  final String name;
  final int id;

  List<Student> get students => _students;

  List<Teacher> get teachers => _teachers;

  List<Course> get courses => _courses;

  School({required this.name, required this.id});

  void showTeachers() {
    teachers.forEach((element) {
      print(element);
    });
  }

  bool _isNationCodeStudentNotRepeat({required int nationalCode}) {
    if (_students.any((element) => element.nationalCode != nationalCode)) {
      return true;
    }
    return true;
  }

  void addStudent({required String fullName, required int nationalCode}) {
    if (_isNationCodeStudentNotRepeat(nationalCode: nationalCode)) {
      _students.add(Student(fullName: fullName, nationalCode: nationalCode));
    } else {
      print('your student was added');
    }
  }

  bool _isNationCodeTeacherNotRepeat({required int nationalCode}) {
    if (_teachers.any((element) => element.nationalCode != nationalCode)) {
      return true;
    }
    return true;
  }

  void addTeacher({required String fullName, required int nationalCode}) {
    if (_isNationCodeTeacherNotRepeat(nationalCode: nationalCode)) {
      _teachers.add(Teacher(fullName: fullName, nationalCode: nationalCode));
    } else {
      print('your teacher was added');
    }
  }

  bool _checkLimitedCourse({required Teacher teacher}) {
    if (teacher.teachCourses.length < 4) {
      return true;
    } else {
      print('your limited for teach is full');
      return false;
    }
  }

  int getTeacherIndex({required int teacherId}) {
    final int teacherIndex =
        _teachers.indexWhere((element) => element.id == teacherId);
    if (teacherIndex != -1) {
      return teacherIndex;
    } else {
      print('not find teacher');
      return teacherIndex;
    }
  }

  int getCourseIndex({required int courseId}) {
    final courseIndex =
        _teachers.indexWhere((element) => element.id == courseId);
    if (courseIndex != -1) {
      return courseIndex;
    } else {
      print('not find course');
      return courseIndex;
    }
  }

  int getStudentIndex({required int studentId}) {
    final studentIndex =
        _teachers.indexWhere((element) => element.id == studentId);
    if (studentIndex != -1) {
      return studentIndex;
    } else {
      print('not find student');
      return studentIndex;
    }
  }

  void addCourseForTeaching({
    required int courseId,
    required int teacherId,
  }) {
    if (checkTeacherIdValid(teacherId: teacherId) &&
        checkCourseIdValid(courseId: courseId)) {
      final int teacherIndex = getTeacherIndex(teacherId: teacherId);
      final int courseIndex = getCourseIndex(courseId: courseId);
      final Teacher teacher = _teachers[teacherIndex];
      if (_checkLimitedCourse(teacher: teacher)) {
        teacher.addCourse(courses[courseIndex]);
      }
    }
  }

  bool checkTeacherIdValid({required int teacherId}) {
    if (getTeacherIndex(teacherId: teacherId) != -1) {
      return true;
    }
    return false;
  }

  bool checkCourseIdValid({required int courseId}) {
    if (getCourseIndex(courseId: courseId) != -1) {
      return true;
    }
    return false;
  }

  bool checkStudentIdValid({required int studentId}) {
    if (getStudentIndex(studentId: studentId) != -1) {
      return true;
    }
    return false;
  }

  void addExamToCourse(
      {required int courseId,
      required int teacherId,
      required int studentId,
      required int score}) {
    if (checkCourseIdValid(courseId: courseId) &&
        checkStudentIdValid(studentId: studentId) &&
        checkTeacherIdValid(teacherId: teacherId)) {
      final int teacherIndex = getTeacherIndex(teacherId: teacherId);

      final int courseIndex = getCourseIndex(courseId: courseId);

      final int studentIndex = getStudentIndex(studentId: studentId);
      final Teacher teacher = _teachers[teacherIndex];

      final Student student = _students[studentIndex];
      final Course course = courses[courseIndex];
      final Exam exam = Exam(
          courseName: course.title,
          studentNationalCode: student.nationalCode,
          teacherNationalCode: teacher.nationalCode,
          score: score);
      course.addExam(exam);
      _exams.add(exam);
    }
  }

  void addCourseToStudentById({required int courseId, required int studentId}) {
    if (checkStudentIdValid(studentId: studentId) &&
        checkCourseIdValid(courseId: courseId)) {
      final int studentIndex = getStudentIndex(studentId: studentId);
      final int courseIndex = getCourseIndex(courseId: courseId);
      final Student student = _students[studentIndex];
      student.addCourse(_courses[courseIndex]);
    } else {
      print('not found course id or student id');
    }
  }

  void showCourses() {
    for (int i = 0; i < courses.length; i++) {
      print('${i + 1}-${courses[i]}');
    }
  }

  void showStudents() {
    for (int i = 0; i < students.length; i++) {
      print('${i + 1}-${students[i]}');
    }
  }

  void showExamsFromCourseById({required int courseId}) {
    if (checkCourseIdValid(courseId: courseId)) {
      final int courseIndex = getCourseIndex(courseId: courseId);
      print(_courses[courseIndex].exams);
    }
  }

  void showTeacherExamsById(
      {required int courseId, required int teacherNationalCode}) {
    if (checkCourseIdValid(courseId: courseId)) {
      final List<Exam> exams =
          _courses[getCourseIndex(courseId: courseId)].exams;
      for (final Exam exam in exams) {
        if (exam.teacherNationalCode == teacherNationalCode) {
          print('${exam.courseName} => ${exam.score}');
        }
      }
    }
  }

  void getAvgStudentScoreById(
      {required int nationalCode, required String fullName}) {
    final int studentIndex = _students.indexWhere((element) =>
        (element.fullName == fullName) && element.nationalCode == nationalCode);
    if (studentIndex != -1) {
      print(_students[studentIndex].getAvg());
    }
  }

  void showStrongToWeakStudentsScoreAvg() {
    Map<String, double> scores = {};
    for (final Student student in _students) {
      scores.addEntries([MapEntry(student.fullName, student.getAvg())]);
    }
    var sortedEntries = scores.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value)); // مرتب‌سازی بر اساس مقدارها
    Map<String, double> sortedMap = Map.fromEntries(sortedEntries);
    print(sortedMap);
  }
}
