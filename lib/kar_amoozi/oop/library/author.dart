class Author {
  String name, lastName, nationalCode;

  
  Author({
    required this.name,
    required this.lastName,
    required this.nationalCode,
  });

  @override
  String toString() {
    return 'Author{name: $name, lastName: $lastName, nationalCode: $nationalCode}';
  }
}
