import 'course.dart';
import 'course_type.dart';

class GeneralCourse extends Course {
  GeneralCourse(
      {required super.title,
      required super.id,
      required super.unitCount,
      super.type = CourseType.public});
}
