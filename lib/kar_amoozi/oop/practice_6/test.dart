// class Dad {
//   final String fullName;
//   final int age;
//
//   const Dad({required this.fullName, required this.age});
//
//   factory Dad.customObject(
//       {required String name, required String lastName, required int age}) {
//     return Dad(fullName: name + ' ' + lastName, age: age);
//   }
// }

void main() {
  final Person person = Employee.fromJson({});

  person.introduce();
}

class Person {
  String? firstName;

  Person.fromJson(Map data);

  void introduce() {
    print('hello my name is person');
  }
}

class Employee extends Person {
  Employee.fromJson(Map data) : super.fromJson(data);

  @override
  void introduce() {
    print('hello my name is employee');
  }
}
