class TestFactoryClass {
  final String? name;
  final String? lastName;

  const TestFactoryClass(this.name, this.lastName);

  factory TestFactoryClass.named(String name, String lastName) {
    return TestFactoryClass(name, lastName);
  }
}

void main() {
  TestFactoryClass testFactoryClass = TestFactoryClass.named('shayan', 'zare');
  print(testFactoryClass.name);
}
