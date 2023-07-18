
abstract class Animal {
  String? name;
  void eat();
  void hello();
  // interface
}

class Babaee implements Animal {

  @override
  void eat() {
    print('babaee is eating');
  }
  @override
  void hello() {
    print('hello');
  }
  @override
  String? name = 'shayan';
}

void main() {
  Babaee babaee = Babaee();
  babaee.eat();
  babaee.hello();
}
