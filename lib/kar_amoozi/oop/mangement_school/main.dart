import 'school.dart';

void main() {
  final School school = School(name: 'shahid torabi', id: 1);
  school.addStudent(fullName: 'arman zare', nationalCode: 54801213);
  school.addTeacher(fullName: 'shayan zare', nationalCode: 54801715);
  school.addTeacher(fullName: 'hossein zare', nationalCode: 5480171);
  school.addStudent(fullName: 'shayan AM', nationalCode: 5485214);
  school.addExamToCourse(courseId: 1, teacherId: 1, studentId: 1, score: 20);
  school.addCourseForTeaching(courseId: 2, teacherId: 1);
  school.addCourseToStudentById(courseId: 1, studentId: 2);
  school.addExamToCourse(courseId: 1, teacherId: 1, studentId: 1, score: 20);
  school.addCourseForTeaching(courseId: 1, teacherId: 1);
  school.addCourseForTeaching(courseId: 1, teacherId: 1);
  school.addCourseForTeaching(courseId: 1, teacherId: 1);
  school.addExamToCourse(courseId: 1, teacherId: 1, studentId: 1, score: 19);
  school.addCourseToStudentById(courseId: 1, studentId: 2);
  school.addCourseToStudentById(courseId: 1, studentId: 1);
  school.showStudents();
  school.showCourses();
  school.addCourseToStudentById(courseId: 2, studentId: 1);
  school.addExamToCourse(courseId: 1, teacherId: 2, studentId: 2, score: 20);

  school.showStrongToWeakStudentsScoreAvg();
}
