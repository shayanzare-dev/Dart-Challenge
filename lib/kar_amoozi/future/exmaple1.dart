import 'dart:math';

void main() {
  greet();
}

void greet() {
  print('greeing user...');
  fetchUser();
}

Future<void> fetchUser() async {
  final Random random = Random();
  int count = names.length;
  while (count != 0) {
    await Future.delayed(Duration(seconds: 2));
    final int nameIndex = random.nextInt(names.length);
    final int lastNameIndex = random.nextInt(lastNames.length);
    print('${names[nameIndex]} ${lastNames[lastNameIndex]}');
    count--;
  }
}

List<String> names = ['Ali', 'Hassan', 'Gholi', 'Asghar', 'Kazem'];
List<String> lastNames = [
  'Aliiii',
  'Hassaniii',
  'Gholiiii',
  'Asghariii',
  'Kazemiii'
];
