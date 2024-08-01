void main() {
  print(fib(first: 0, second: 1));
}

String fib({required int first, required int second}) {
  int third = first + second;
  if (third >= 100) {
    return '$first , $second';
  } else {
    print('$first , $second');
    return fib(first: second, second: third);
  }
}
