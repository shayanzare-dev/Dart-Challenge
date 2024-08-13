import 'course/course.dart';
import 'semester.dart';
import 'university.dart';

class costStudent {
  final University university;

  const costStudent({
    required this.university,
  });

  int calculateBaseUnitPrice({required int studentId}) {
    int baseUnitPrice;
    final bool isSame =
    university.isStudentSameUniversityLocation(studentId: studentId);
    if (isSame) {
      baseUnitPrice = 50;
    } else {
      baseUnitPrice = 130;
    }

    return baseUnitPrice;
  }

  void cost({
    required int studentId,
    required int semesterId,
  }) {
    final bool verifyStudent =
        university.getStudentInUniversity(studentId: studentId) != -1;
    final bool verifySemester =
        university.getSemesterInUniversity(semesterId: semesterId) != -1;

    int semesterIndex =
    university.getSemesterInUniversity(semesterId: semesterId);

    if (verifyStudent && verifySemester) {
      final Semester semester = university.semesters[semesterIndex];
      print(semester);
      final List<Course> courses =
      _generateNewCourses(courses: semester.courses, studentId: studentId);

      if (courses.isNotEmpty) {
        int sumCourseUnit = _getSumCourseUnit(courses: courses);
        int totalCourseUnit = _calculateCoursePrice(
            courses: courses,
            basePrice: calculateBaseUnitPrice(studentId: studentId));
        print('total course unit price student => $totalCourseUnit');
      } else {
        print('courses is empty');
      }
      print('course list => ${courses}');
    } else {
      print('not found that id in them');
    }
  }

  List<Course> _generateNewCourses(
      {required List<Course> courses, required int studentId}) {
    final List<Course> newCourses = [];
    for (final Course course in courses) {
      if (course.students.any((student) => student.id == studentId)) {
        newCourses.add(course);
      }
    }
    return newCourses;
  }

  int _getSumCourseUnit({required List<Course> courses}) {
    int sumCourseUnitCode = 0;
    for (final Course course in courses) {
      sumCourseUnitCode += course.unitCount;
    }
    return sumCourseUnitCode;
  }

  int _calculateCoursePrice(
      {required List<Course> courses, required int basePrice}) {
    int sum = 0;
    courses.forEach((course) {
      sum += course.unitCount * basePrice * course.costFactor;
    });
    return sum;
  }
}
