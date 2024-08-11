class Game {
  static int idCount = 0;
  final String Description;
  final String name;
  final int id;

  Game({
    required this.name,
    required this.Description,
  }) : id = idCount++;

  @override
  String toString() {
    return 'Game{Description: $Description, name: $name, id: $id}';
  }
}
