void main() async {
  a();
  print('a is finished');
  await b();
  print('b is finished');
  c();
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
