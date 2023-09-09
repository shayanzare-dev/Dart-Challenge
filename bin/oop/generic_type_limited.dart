mixin Name on A {}

class A<T> {}

class B<T extends A> extends A with Name {
  T? contents;

  void add(T value) {
    contents = value;
  }

  void checkType() {
    print('the type object is $T');
  }
}

void main() {
  final B<A<String>> b1 = B();
  b1.checkType();
}
