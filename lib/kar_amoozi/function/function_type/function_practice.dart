void main() {
  List<int> list = [1, 2, 3, 4, 5];
  // Function test = (int a, String b) => '${a * 2}';
  //
  // print(test.runtimeType);
  //
  // String result = test(12,2);
  //

  int Function(int) multiplyBy5 = (int value) {
    return value * 5;
  };
  print(applyOperation(list: list, operation: multiplyBy5));
}

List<int> applyOperation(
    {required List<int> list, required int Function(int) operation}) {
  List<int> result = [];
  for (final item in list) {
    final value = operation(item);
    result.add(value);
  }
  return result;
}
