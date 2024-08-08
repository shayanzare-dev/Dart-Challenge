import 'course/course_type.dart';
import 'location.dart';
import 'student.dart';
import 'university.dart';

void main() {
  final Location shiraz = Location(id: 1, title: 'shiraz');
  final University taavUniversity = University(
    location: shiraz,
    name: 'taav',
    id: 1,
  );
  taavUniversity.addSemester(title: '2018 winter', id: 1);

  taavUniversity.semesters.first.addCourse(
      id: 1, unitCount: 1, title: 'shayan zz', type: CourseType.Professional);

  taavUniversity.semesters.first.addCourse(
      id: 2, unitCount: 15, title: 'ping ping', type: CourseType.public);
  taavUniversity.addCourseToSemesterById(
      semesterId: 1,
      courseId: 24,
      courseUnitCount: 8,
      courseTitle: 'math',
      courseType: CourseType.public);

  taavUniversity.addStudent(
      name: 'shayan zare', id: 1, location: Location(id: 7, title: 'shiraz'));

  final Student student = Student(
      name: 'shayan zaree', id: 2, location: Location(title: 'tehran', id: 3));

  student
}
