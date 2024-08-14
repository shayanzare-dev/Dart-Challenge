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

  bool _isNationCodeStudentNotRepeat({required int nationalCode}) {
    if (_students.any((element) => element.nationalCode != nationalCode)) {
      return true;
    }
    return true;
  }

  void addStudent({required String fullName, required int nationalCode}) {
    if (_isNationCodeStudentNotRepeat(nationalCode: nationalCode)) {
      _students.add(Student(
          fullName: fullName, nationalCode: nationalCode, courses: courses));
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
    final teacherIndex =
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

  void addCourseForTeaching({required int courseId, required int teacherId}) {
    final int teacherIndex = getTeacherIndex(teacherId: teacherId);

    final int courseIndex = getCourseIndex(courseId: courseId);

    if (teacherIndex != -1 && courseIndex != -1) {
      final Teacher teacher = _teachers[teacherIndex];
      if (_checkLimitedCourse(teacher: teacher)) {
        teacher.addCourse(courses[courseIndex]);
      }
    } else {
      print('not find teacher or course!');
    }
  }

  void addExamToCourse({required int courseId,
    required int teacherId,
    required int studentId,
    required int score}) {
    final int teacherIndex = getTeacherIndex(teacherId: teacherId);

    final int courseIndex = getCourseIndex(courseId: courseId);

    final int studentIndex = getStudentIndex(studentId: studentId);

    if (teacherIndex != -1 && courseIndex != -1 && studentIndex != -1) {
      final Teacher teacher = _teachers[teacherIndex];

      final Student student = _students[studentIndex];
      final Course course = courses[teacherIndex];
      final Exam exam = Exam(
          courseName: course.title,
          studentNationalCode: student.nationalCode,
          teacherNationalCode: teacher.nationalCode,
          score: score);
      course.addExam(exam);
      _exams.add(exam);
    }
  }

  void addStudentToCourseById({required int courseId, required int studentId}) {
    final int studentIndex = getStudentIndex(studentId: studentId);
    final int courseIndex = getCourseIndex(courseId: courseId);

    if (studentIndex != -1 && courseIndex != -1) {
      final Course course = _courses[courseIndex];
      course.addStudent(_students[studentIndex]);
    } else {
      print('not found course id or student id');
    }
  }

  void showCourses() {
    for (int i = 0; i < courses.length; i++) {
      print('${i + 1}-${courses[i]}');
    }
  }

  void pointAvg({required int studentId}) {
    final int studentIndexInExam = _exams.indexWhere((element) =>
    element.studentNationalCode ==);
    if (studentIndex != -1) {}
  }
}
