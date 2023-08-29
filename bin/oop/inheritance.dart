class A {
  final int a;

  void myMethod() => print(a);

  const A({this.a = 85});
}

class B extends A {
  const B({super.a});
}

void main() {
  A test = B();
  print(test.a);
}
