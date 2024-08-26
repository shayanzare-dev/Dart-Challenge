import 'dart:async';

void main() {
  printHello();
}

void printHello() async {
  final String hello = await fetchHello();
  final String user = await fetchUser();
  final String dear = await fetchDear();
  print('$hello $user $dear');
}

Future<dynamic> futureDelayedGenerator(int number) {
  return Future.delayed(Duration(seconds: number));
}

Future<String> fetchHello() async {
  futureDelayedGenerator(1);
  return 'hello';
}

Future<String> fetchUser() async {
  await futureDelayedGenerator(3);
  return 'user';
}

Future<String> fetchDear() async {
  futureDelayedGenerator(2);
  return 'dear';
}
