class TestFactoryClass {
  final String? name;
  final String? lastName;

  const TestFactoryClass(this.name, this.lastName);

  factory TestFactoryClass.create(String name, String lastName) {
    return TestFactoryClass(name, lastName);
  }
}

void main() {
  TestFactoryClass testFactoryClass = TestFactoryClass.create('shayan', 'zare');
  print(testFactoryClass.name);
}
