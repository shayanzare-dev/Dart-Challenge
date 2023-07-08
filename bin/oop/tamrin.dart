void main() {
  Animal cow = Cow(name: 'shayan', color: 'white');
}

abstract class Animal {
  String? name;
  String? color;

  Animal({required this.name, required this.color});

  void eat();
}

class Cow extends Animal {
  Cow({super.name, super.color}) : super();

  @override
  void eat() {
    print("$name is eating");
  }
}
