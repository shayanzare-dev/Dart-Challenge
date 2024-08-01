void main() {
  try {
    var a = 10 ~/ 0;
  } on IntegerDivisionByZeroException {
    print('this error is = $IntegerDivisionByZeroException');
  }

  print('continue code');
}
