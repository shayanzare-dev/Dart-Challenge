import 'course.dart';
import 'course_type.dart';

class ProfessionalCourse extends Course {
  ProfessionalCourse(
      {required super.title,
      required super.id,
      required super.unitCount,
      super.type = CourseType.Professional});
}
