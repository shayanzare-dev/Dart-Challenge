import 'course.dart';

class GeneralCourse extends Course {
  GeneralCourse({
    required super.title,
    required super.id,
    required super.unitCount,
  });

  @override
  double get costFactor => 1;
}
