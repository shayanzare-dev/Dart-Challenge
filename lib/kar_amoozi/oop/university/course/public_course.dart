import 'course.dart';

class GeneralCourse extends Course {
  GeneralCourse(
      {required super.title, required super.unitCount, required super.id});

  @override
  int get costFactor => 1;
}
