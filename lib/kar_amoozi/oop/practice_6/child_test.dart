int? b = 9;

void main() {
  // print(a);
  int count = 0;

  void printHello() {
    print('hello + $b + $count ');
    int inPrintHello = 0;
    void test() {
      print('$b, $count, $inPrintHello');
    }
  }

  print(b);
}

void myFunction() {
  test();
  int a = 8;
  // printHello();
  print(b);
}

Function test() {
  return (int a) => a;
}
