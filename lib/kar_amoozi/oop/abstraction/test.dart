abstract class Animal {
  final int id;
  final String name;

  const Animal(this.id, this.name);

  void eat();

  void drink();
}

class Dog extends Animal {
  Dog(super.id, super.name);

  @override
  void drink() {
    // TODO: implement drink
  }

  @override
  void eat() {
    // TODO: implement eat
  }

  void run() {
    // TODO
  }
}

void main() {
  Animal dog = Dog(11, 'shayan');
  // error => dog.run();
}
