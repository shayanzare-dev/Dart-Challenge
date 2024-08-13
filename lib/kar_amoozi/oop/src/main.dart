import 'package:university_semester_cost/src/cost_calculator.dart';
import 'package:university_semester_cost/src/student.dart';

import 'course/general_course.dart';
import 'course/specialized_course.dart';
import 'course/course.dart';

import 'university.dart';
import 'location.dart';

void main() {
  final shiraz = Location(title: 'Shiraz', id: 1);

  final University taavUniversity = University(
    location: shiraz,
    name: 'Taav',
    id: 1,
  );

  taavUniversity.addSemester(title: '2024 Summer', id: 1);
  taavUniversity.addSemester(title: '2024 Winter', id: 2);
  taavUniversity.addSemester(title: '2025 Summer', id: 3);

  // taavUniversity.addCourseToSemesterById(
  //   semesterId: 2,
  //   courseId: 656,
  //   courseUnitCount: 123,
  //   courseTitle: 'FADFASDF',
  // );

  taavUniversity.semesters.first.addGeneralCourse(
    id: 1,
    unitCount: 3,
    title: 'Math',
  );
  taavUniversity.semesters.first.addSpecializedCourse(
    id: 2,
    unitCount: 1,
    title: 'Ping Pong',
  );

  taavUniversity.addStudent(
    name: 'pariya negahdaripour',
    location: shiraz,
    id: 1,
  );

  taavUniversity.addStudent(
    name: 'ali alipour',
    location: shiraz,
    id: 2,
  );

  taavUniversity.addStudentToCourse(
    studentId: 1,
    semesterId: 1,
    courseId: 1,
  );

  print(taavUniversity);
  print('------------------');
  print(taavUniversity.semesters.first);
  print('------------------');
  print(taavUniversity.semesters.first.courses.first);
  print('------------------');
  print(taavUniversity.isStudentInUniversity(studentId: 1));
  print(taavUniversity.isStudentInUniversity(studentId: 2));
  print('------------------');
print(taavUniversity.semesters.first.courses.first.isStudentInCourse(studentId: 2))  ;
print(taavUniversity.semesters.first.courses.first.isStudentInCourse(studentId: 1))  ;

  final CostCalculator calculator = CostCalculator(university: taavUniversity);


}

// void main() {
//   final GeneralCourse g = GeneralCourse(
//     id: 1,
//     title: 'g',
//     unitCount: 1,
//   );
//   final SpecializedCourse s = SpecializedCourse(
//     id: 1,
//     title: 's',
//     unitCount: 1,
//   );
//
//   print(g.costFactor);
//   print(s.costFactor);
// }
