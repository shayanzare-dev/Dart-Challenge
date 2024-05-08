void main() {
  a().then((value) => print('a is finished'));
  b().then((value) {
    print('b is finished');
    return c();
  });
}

Future<void> a() {
  print('a');
  return Future.delayed(Duration(seconds: 1));
}

Future<void> b() {
  print('b');
  return Future.delayed(Duration(seconds: 4));
}

Future<void> c() {
  print('c');
  return Future.delayed(Duration(seconds: 6));
}
