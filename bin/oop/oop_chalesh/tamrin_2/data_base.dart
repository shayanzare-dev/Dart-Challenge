class User {
  final String name;
  final String lastName;
  final String age;

  // formal
  const User(this.name, this.lastName, this.age);

  // factory constructor
  factory User.constructor(String name, String lastName, String age) {
    final fullName = (name + lastName) + age;
    return User(name, lastName, age);
  }

  static String concate({required String name, required String lastName}) {
    return name + lastName;
  }
}

void main() {
  List<User> list = [];
  User user = User.constructor('shayan', 'zare', '19');
  list.add(user);
  list.forEach((element) {
    print(element);
  });
}
