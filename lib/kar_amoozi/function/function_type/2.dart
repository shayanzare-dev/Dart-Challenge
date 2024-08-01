void main() {
  final int Function(int, int) first = (int value1, int value2) {
    return value1 * value2;
  };
  final test = (int value) {
    final result = first(value, 10);
    return result;
  };
  int Function(int) second = test;

 final int Function({required int s, required int v}) testMySelf =
      ({required int s, required int v}) {
    return s + v;
  };

  print(testMySelf(s: 12, v: 1));
}
