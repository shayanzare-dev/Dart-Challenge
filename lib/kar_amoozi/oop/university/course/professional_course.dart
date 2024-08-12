import 'course.dart';

class ProfessionalCourse extends Course {
  ProfessionalCourse(
      {required super.title, required super.unitCount, required super.id});

  @override
  int get costFactor => 2;
}
