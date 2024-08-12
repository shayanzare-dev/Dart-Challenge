class Location {
  static int idCount = 0;
  final String title;
  final int id;

  Location({required this.title}) : id = ++idCount;

  @override
  String toString() {
    return 'Location{title: $title, id: $id}';
  }
}
