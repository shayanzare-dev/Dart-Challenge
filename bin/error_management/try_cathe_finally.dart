void main() {
  try {
    var a = 10 ~/ 0;
  } catch (e) {
    print('this error is = $e');
  } finally {
    print('test finally');
  }

  print('continue code');
}
