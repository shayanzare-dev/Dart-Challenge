class Person {
  static const welcomeMessage = 'welcome';
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  String introduce() => 'name => $name and age is $age';
}
