void main() async {
  final String test = await _intro(10);
  print(test);
}

Future<void> generateTime(int maximumNumber) async {
  for (int i = 1; i <= maximumNumber; i++) {
    print(i);
    await Future.delayed(Duration(seconds: 1));
  }
}

Future<String> _intro(int number) async {
  await Future.delayed(Duration(seconds: number));
  return 'shayan';
}

