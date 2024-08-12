import 'location.dart';
import 'student_cost_semseter.dart';
import 'university.dart';

void main() {
  final Location location = Location(title: 'shiraz');
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
  university.addStudentToCourseById(semesterId: 2, studentId: 1, courseId: 3);
  final StudentCostSemester studentCostSemester =
      StudentCostSemester(university: university);

  studentCostSemester.cast(studentId: 1, semesterId: 2);
}
