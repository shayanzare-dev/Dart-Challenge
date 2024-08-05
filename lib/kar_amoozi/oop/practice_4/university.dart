import 'location.dart';
import 'semester.dart';
import 'student.dart';

class University {
  // todo(shayan zare): location , List<semester>

  final Location location;
  final String name;
  final int id;
  final List<Semester> _semesters = [];
  final List<Student> students = [];

  University({
    required this.location,
    required this.name,
    required this.id,
  });

  List<Semester> get semesters => _semesters;

  void addSemester({required String title, required int id}) {
    final newSemester = Semester(id: id, title: title);
    _semesters.add(newSemester);
  }

  void addCourseToSemesterById(
      {required int semesterId,
      required int courseId,
      required int courseUnitCount,
      required String courseTitle}) {
    final int semesterIndex =
        _semesters.indexWhere((element) => element.id == semesterId);

    final bool isSemesterFound = semesterIndex != -1;

    if (isSemesterFound) {
      _semesters[semesterIndex].addCourse(
        id: courseId,
        unitCount: courseUnitCount,
        title: courseTitle,
      );
    }
  }

  @override
  String toString() {
    return 'University{location: $location, students: $students, name: $name, id: $id}';
  }
}
