class Mom {
  String? name;
  String? colorEyes;
  int? age;
  Mom(this.name, this.colorEyes, this.age) {
    print('instace is good');
  }
  void hello() {
    print('hello $name');
  }
}

class Child extends Mom {
  Child(String name, int age) : super(name, 'black', age);
  @override
  void hello() {
    super.hello();
    print('hello $name');
  }
}

void main() {
  Child child = Child('shayan', 17);
  child.hello();
}
