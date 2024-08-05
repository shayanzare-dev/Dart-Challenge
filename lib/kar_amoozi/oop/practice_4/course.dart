class Course {
  final String title;
  final int id;
  final int unitCount;

  const Course(
      {required this.title, required this.id, required this.unitCount});

  @override
  String toString() {
    return 'Course{title: $title, id: $id, unitCount: $unitCount}';
  }
}
