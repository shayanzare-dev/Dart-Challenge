class Location {
  final String title;
  final int id;

  const Location({required this.title, required this.id});

  @override
  String toString() {
    return 'Location{title: $title, id: $id}';
  }
}
