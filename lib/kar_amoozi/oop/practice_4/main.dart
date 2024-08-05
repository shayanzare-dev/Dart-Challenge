import 'location.dart';
import 'university.dart';

void main() {
  final Location shiraz = Location(id: 1, title: 'shiraz');
  final tavvUniversity = University(
    location: shiraz,
    name: 'taav',
    id: 1,
  );
  tavvUniversity.addSemester(title: '2018 winter', id: 1);

  tavvUniversity.semesters.first.addCourse(
    id: 1,
    unitCount: 1,
    title: 'shayan zz',
  );

  tavvUniversity.semesters.first
      .addCourse(id: 2, unitCount: 15, title: 'ping ping');
}
