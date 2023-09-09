class A<T> {
  T? contents;

  void add(T value) {
    contents = value;
  }

  void checkType() {
    print('the type object is $T');
  }
}

void main() {
  final A<int> a1 = A();
  a1.checkType();
  final A<String> a2= A();
  a2.checkType();
}
