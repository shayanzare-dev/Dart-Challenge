import 'package:university_semester_cost/src/course/course.dart';
import 'package:university_semester_cost/src/university.dart';

import 'semester.dart';

class CostCalculator {
  final University university;

  const CostCalculator({
    required this.university,
  });

  double calculateStudentSemesterCost({
    required int studentId,
    required int semesterId,
  }) {
    // unitcount
    // course type

    final bool isSemesterFound = university.isSemesterInUniversity(
      semesterId: semesterId,
    );

    final bool isStudentInSameLocation = university.isStudentInSameLocation(
      studentId: studentId,
    );

    final double baseUnitCost = isStudentInSameLocation ? 75.0 : 100.0;

    // count spec unit
    // count gene unit
    final Semester semester = university.semesters.firstWhere(
      (element) => element.id == semesterId,
    );

     double totalCost = 0.0;

    for (Course course in semester.courses) {
      if(course.isStudentInCourse(studentId: studentId)){
        double courseCost = course.unitCount * baseUnitCost * course.costFactor;
        totalCost += courseCost;
      }
    }

    return 0.0;
  }
}
