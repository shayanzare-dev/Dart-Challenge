import 'school.dart';

void main() {
  final School school = School(name: 'shahid torabi', id: 1);
  school.addStudent(fullName: 'arman zare', nationalCode: 54801213);
  school.addTeacher(fullName: 'shayan zare', nationalCode: 54801715);
  school.addTeacher(fullName: 'hossein zare', nationalCode: 5480171);
  school.addStudent(fullName: 'shayan AM', nationalCode: 5485214);
  school.addExamToCourse(courseId: 1, teacherId: 1, studentId: 1, score: 20);
  school.addCourseForTeaching(courseId: 2, teacherId: 1);
  school.addStudentToCourseById(courseId: 1, studentId: 2);
  print(school.teachers);
  school.showCourses();
}
