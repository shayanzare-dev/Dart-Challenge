import 'location.dart';
import 'student_cost_semseter.dart';
import 'university.dart';

void main() {
  final Location location = Location(title: 'shiraz', id: 1);
  final University university =
      University(location: location, name: 'zand', id: 1);

  university.addStudent(name: 'shayan zare', id: 12, location: location);
  university.addStudent(name: 'arman zare', id: 1, location: location);
  university.addStudent(name: 'hamid zare', id: 2, location: location);
  university.addStudent(name: 'ali das', id: 3, location: location);

  university.addSemester(title: 'a1', id: 1);
  university.addSemester(title: 'b1', id: 2);
  university.addSemester(title: 'c2', id: 3);
  university.addGeneralCourseToSemesterById(
      semesterId: 2, courseUnitCount: 3, courseTitle: 'math', courseId: 1);
  university.addProfessionalCourseToSemesterById(
      semesterId: 2,
      courseUnitCount: 2,
      courseTitle: 'english language',
      courseId: 2);
  university.addGeneralCourseToSemesterById(
      semesterId: 2,
      courseUnitCount: 2,
      courseTitle: 'programming',
      courseId: 3);
  university.addStudentToCourseById(semesterId: 2, studentId: 12, courseId: 3);

  university.addGeneralCourseToSemesterById(
      semesterId: 2,
      courseUnitCount: 3,
      courseTitle: 'second math',
      courseId: 6);
  university.addGeneralCourseToSemesterById(
      semesterId: 1, courseUnitCount: 5, courseTitle: 'babee', courseId: 5);
  university.addProfessionalCourseToSemesterById(
      semesterId: 3,
      courseUnitCount: 3,
      courseTitle: 'second programming course',
      courseId: 7);
  university.addStudentToCourseById(semesterId: 3, studentId: 12, courseId: 7);

  final costStudent studentCostSemester = costStudent(university: university);

  studentCostSemester.cost(studentId: 12, semesterId: 3);
}
