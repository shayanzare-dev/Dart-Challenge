import 'course.dart';
import 'course_type.dart';

class PublicCourse extends Course {
  PublicCourse(
      {required super.title,
      required super.id,
      required super.unitCount,
      super.type = CourseType.public});
}
