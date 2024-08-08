import '../../practice_4/student.dart';
import 'course_type.dart';
import 'professional_course.dart';
import 'public_course.dart';

class Course {
  final CourseType type;
  final String title;
  final int id;
  final int unitCount;
  static final List<Student> students = [];

  Course(
      {required this.title,
      required this.id,
      required this.unitCount,
      required this.type});

  factory Course.create(
      {required String title,
      required int id,
      required int unitCount,
      required CourseType courseType}) {
    if (courseType == CourseType.public) {
      return PublicCourse(title: title, id: id, unitCount: unitCount);
    } else {
      return ProfessionalCourse(title: title, id: id, unitCount: unitCount);
    }
  }

  @override
  String toString() {
    return 'Course{title: $title, id: $id, unitCount: $unitCount}';
  }
}
