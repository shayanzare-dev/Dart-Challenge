class Animal {
  String name;

  Animal(this.name);

  factory Animal.create(String name) {
    if (name == 'cat') {
      return Dog(name);
    } else if (name == 'dog') {
      return Cat(name);
    } else {
      throw Exception('invalid name please');
    }
  }

  void sound() {
    throw UnimplementedError;
  }
}

class Dog extends Animal {
  Dog(super.name);

  @override
  void sound() {
    print('woof');
  }
}

class Cat extends Animal {
  Cat(super.name);

  @override
  void sound() {
    print('meow');
  }
}

void main() {
  Animal cat = Animal.create('dog');
  print(cat.name);
}
