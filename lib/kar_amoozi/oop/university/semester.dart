import 'course/course.dart';
import 'course/professional_course.dart';
import 'course/public_course.dart';

class Semester {
  final int id;
  final String title;
  final List<Course> _courses = [];

  List<Course> get courses => _courses;

  Semester({required this.id, required this.title});

  Course? getCourseById({required int courseId}) {
    final int courseIndex =
        _courses.indexWhere((element) => element.id == courseId);

    final checkCourseFound = courseIndex != -1;
    if (checkCourseFound) {
      return _courses[courseIndex];
    } else {
      return null;
    }
  }

  void addGeneralCourse(
      {required int unitCount, required String title, required int id}) {
    final Course newCourse =
        GeneralCourse(title: title, unitCount: unitCount, id: id);
    _courses.add(newCourse);
  }

  void addProfessionalCourse(
      {required int unitCount, required String title, required int id}) {
    final Course newCourse =
        ProfessionalCourse(title: title, unitCount: unitCount, id: id);
    _courses.add(newCourse);
  }

  @override
  String toString() {
    return 'Semester{id: $id, title: $title}';
  }
}
