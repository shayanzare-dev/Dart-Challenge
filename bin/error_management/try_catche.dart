void main() {
  try {
    var a = 10 ~/ 0;
  } catch (e) {
    print('error is = $e');
  }

  print('continue code');
}
