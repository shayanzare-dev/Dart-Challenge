class Location {
  final String title;
  final int id;

  Location({
    required this.title,
    required this.id,
  });

  @override
  String toString() {
    return 'Location{title: $title, id: $id}';
  }
}
