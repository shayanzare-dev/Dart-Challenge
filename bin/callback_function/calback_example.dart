class Test {
  final String? name;
  final void Function() testFunction;

  Test({this.name, required this.testFunction}) {
    start();
  }

  void start() {
    Future.delayed(Duration(seconds: 4), () {
      testFunction;
    });
  }
}

class Test2 {
  final void Function() testFunction;

  const Test2({required this.testFunction});
}

void main() {
  Test2 test2 = Test2(testFunction: () {
    print('hello world');
  });

  Test test = Test(testFunction: test2.testFunction);
}
