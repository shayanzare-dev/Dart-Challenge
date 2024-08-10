class Author {
  final String name, lastName;
  final int _nationalCode;

  Author({
    required this.name,
    required this.lastName,
    required int nationalCode,
  }) : _nationalCode = nationalCode;

  int get nationalCode => _nationalCode;

  @override
  String toString() {
    return 'Author{name: $name, lastName: $lastName}';
  }
}
