import 'course/course.dart';
import 'location.dart';
import 'semester.dart';
import 'student.dart';

class University {
  final Location location;
  final String name;
  final int id;
  final List<Semester> _semesters = [];
  final List<Student> _students = [];

  University({
    required this.location,
    required this.name,
    required this.id,
  });

  List<Semester> get semesters => _semesters;

  List<Student> get students => _students;

  void addSemester({required String title, required int id}) {
    final Semester newSemester = Semester(id: id, title: title);
    _semesters.add(newSemester);
  }

  void addStudent(
      {required String name, required int id, required Location location}) {
    _students.add(Student(name: name, id: id, location: location));
  }

  void addGeneralCourseToSemesterById(
      {required int semesterId,
      required int courseUnitCount,
      required String courseTitle,
      required int courseId}) {
    final int semesterIndex =
        _semesters.indexWhere((element) => element.id == semesterId);

    final bool isSemesterFound = semesterIndex != -1;

    if (isSemesterFound) {
      _semesters[semesterIndex].addGeneralCourse(
          unitCount: courseUnitCount, title: courseTitle, id: courseId);
    }
  }

  void addProfessionalCourseToSemesterById(
      {required int semesterId,
      required int courseUnitCount,
      required String courseTitle,
      required int courseId}) {
    final int semesterIndex =
        _semesters.indexWhere((element) => element.id == semesterId);

    final bool isSemesterFound = semesterIndex != -1;

    if (isSemesterFound) {
      _semesters[semesterIndex].addProfessionalCourse(
          unitCount: courseUnitCount, title: courseTitle, id: courseId);
    }
  }

  void addStudentToCourse(
      {required int studentId,
      required int courseId,
      required int semesterId}) {
    final int studentIndex =
        _students.indexWhere((element) => element.id == studentId);
    final int semesterIndex =
        _semesters.indexWhere((element) => element.id == semesterId);

    final bool isStudentFound = studentIndex != -1;
    final bool isSemesterFound = semesterIndex != -1;

    if (isSemesterFound && isStudentFound) {
      final Course? course =
          _semesters[semesterIndex].getCourseById(courseId: courseId);
      if (course != null) {
        print('_students => $_students');
        course.addStudent(_students[studentIndex]);
      }
    }
  }

  void addStudentToCourseById(
      {required int semesterId,
      required int studentId,
      required int courseId}) {
    final int semesterIndex =
        _semesters.indexWhere((element) => element.id == semesterId);
    final int studentIndex =
        _students.indexWhere((element) => element.id == studentId);

    final bool semesterFound = semesterIndex != -1;

    final bool studentFound = studentIndex != -1;

    if (semesterFound && studentFound) {
      final int courseIndex = _semesters[semesterIndex]
          .courses
          .indexWhere((element) => element.id == courseId);
      final bool courseFound = studentIndex != -1;
      if (courseFound) {
        final Student student = _students[studentIndex];
        _semesters[semesterIndex].courses[courseIndex].addStudent(student);
      }
    }
  }

  @override
  String toString() {
    return 'University{location: $location, name: $name, id: $id}';
  }
}
