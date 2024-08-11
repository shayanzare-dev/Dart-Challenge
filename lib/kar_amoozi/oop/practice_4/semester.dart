import 'course/course.dart';
import 'course/course_type.dart';
import 'location.dart';
import 'student.dart';

class Semester {
  final int id;
  final String title;
  final List<Course> _courses = [];

  List<Course> get courses => _courses;

  Semester({required this.id, required this.title});

  void addStudentToCourse(
      {required String name, required int id, required Location location}) {
    final Student student = Student(name: name, id: id, location: location);
    Course.students.add(student);
  }

  void addCourse({required int id,
    required int unitCount,
    required String title,
    required CourseType type}) {
    final Course newCourse = Course.create(
        title: title, id: id, unitCount: unitCount, courseType: type);
    _courses.add(newCourse);
  }

  @override
  String toString() {
    return 'Semester{id: $id, title: $title}';
  }
}
