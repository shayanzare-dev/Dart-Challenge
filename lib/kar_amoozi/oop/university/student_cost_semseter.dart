import 'course/course.dart';
import 'location.dart';
import 'semester.dart';
import 'student.dart';
import 'university.dart';

class StudentCostSemester {
  /// I must calculate with  student id , semester id, and go
  /// to course list and calculate any unit code
  /// student id
  // final int studentId;
  //
  final University university;

  const StudentCostSemester({
    required this.university,
  });

  /*bool verifyStudent() {
    if (studentIndex != -1) {
      return true;
    }
    return false;
  }

  bool verifySemester(
      {required int semesterId, required University university}) {

    if (semesterIndex != -1) {
      return true;
    }
    return false;
  }*/

  void cast({
    required int studentId,
    required int semesterId,
  }) {
    final int studentIndex = this
        .university
        .students
        .indexWhere((element) => element.id == studentId);

    final int semesterIndex = this
        .university
        .semesters
        .indexWhere((element) => element.id == semesterId);

    if (semesterIndex != -1 && studentIndex != -1) {
      final Semester semester = this.university.semesters[semesterIndex];
      final List<Course> courseList = semester.courses;
      // todo(sas)
      // courseList[studentIndex].addStudent(Student(
      //     name: 'shayan zare', id: 1, location: Location(title: 'shiraz')));
      int allUnit = _getSumCourseUnit(courseList: courseList);
      int resultSemesterPrice = _calculateCoursePrice(
          courseList: courseList, studentIndex: studentIndex);
      if (allUnit <= 7) {
        resultSemesterPrice += 100;
      }
      if (allUnit >= 8) {
        // todo(SHAYAN ZARE);
      }
      print('result price at this semester => $resultSemesterPrice');
    } else {
      print('not found that id in ');
    }
  }

  int _getSumCourseUnit({required List<Course> courseList}) {
    int sum = 0;
    courseList.forEach((element) {
      sum += element.unitCount;
    });
    return sum;
  }

  int _calculateCoursePrice(
      {required List<Course> courseList, required int studentIndex}) {
    int sum = 0;
    courseList.forEach((element) {
      if (this.university.location.title ==
          element.students[studentIndex].location.title) {
        sum += element.unitCount * 75;
      } else {
        sum += element.unitCount * 125;
        print('not found the similar location');
      }
    });
    return sum;
  }
}
