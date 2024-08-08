import 'course/course_type.dart';
import 'location.dart';
import 'semester.dart';
import 'student.dart';

class University {
  // todo(shayan zare): location , List<semester>

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
    final Student student = Student(name: name, id: id, location: location);
    _students.add(student);
  }

  void addCourseToSemesterById({
    required int semesterId,
    required int courseId,
    required int courseUnitCount,
    required String courseTitle,
    required CourseType courseType,
  }) {
    final int semesterIndex =
        _semesters.indexWhere((element) => element.id == semesterId);

    final bool isSemesterFound = semesterIndex != -1;

    if (isSemesterFound) {
      _semesters[semesterIndex].addCourse(
          id: courseId,
          unitCount: courseUnitCount,
          title: courseTitle,
          type: courseType);
    }
  }

  @override
  String toString() {
    return 'University{location: $location, name: $name, id: $id}';
  }
}
