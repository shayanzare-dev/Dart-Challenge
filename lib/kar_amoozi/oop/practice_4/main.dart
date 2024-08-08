import 'course/course_type.dart';
import 'location.dart';
import 'university.dart';

void main() {
  final Location shiraz = Location(id: 1, title: 'shiraz');
  final University tavvUniversity = University(
    location: shiraz,
    name: 'taav',
    id: 1,
  );
  tavvUniversity.addSemester(title: '2018 winter', id: 1);

  tavvUniversity.semesters.first.addCourse(
      id: 1, unitCount: 1, title: 'shayan zz', type: CourseType.Professional);

  tavvUniversity.semesters.first.addCourse(
      id: 2, unitCount: 15, title: 'ping ping', type: CourseType.public);
  tavvUniversity.addCourseToSemesterById(
      semesterId: 1,
      courseId: 24,
      courseUnitCount: 8,
      courseTitle: 'math',
      courseType: CourseType.public);
}
