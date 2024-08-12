import 'course/course.dart';
import 'course/general_course.dart';
import 'course/specialized_course.dart';

class Semester {
  final int id;
  final String title;
  final List<Course> _courses = [];


  List<Course> get courses => _courses;


  Semester({
    required this.id,
    required this.title,
  });

  void addGeneralCourse({
    required int id,
    required int unitCount,
    required String title,
  }) {
    final Course newCourse = GeneralCourse(
      title: title,
      id: id,
      unitCount: unitCount,
    );

    _courses.add(newCourse);
  }

  void addSpecializedCourse({
    required int id,
    required int unitCount,
    required String title,
  }) {
    final Course newCourse = SpecializedCourse(
      title: title,
      id: id,
      unitCount: unitCount,
    );

    _courses.add(newCourse);
  }

  Course? getCourseById({required int courseId}) {
    final courseIndex =
    _courses.indexWhere((element) => element.id == courseId);

    if (courseIndex != -1) {
      return _courses[courseIndex];
    } else {
      return null;
    }
  }

  @override
  String toString() {
    return 'Semester{id: $id, title: $title,}';
  }
}
