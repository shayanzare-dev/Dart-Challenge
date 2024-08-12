import 'course.dart';

class SpecializedCourse extends Course {
  SpecializedCourse({
    required super.title,
    required super.id,
    required super.unitCount,
  });

  @override
  double get costFactor => 2;
}
