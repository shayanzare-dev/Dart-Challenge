import 'dart:math';

void main() {
  int count = 5;
  while (count != 0) {
    print(fetchUser());
    count--;
  }
}

String fetchUser() {
  final Random random = Random();
  final int nameIndex = random.nextInt(names.length);
  final int lastNameIndex = random.nextInt(lastNames.length);

  return '${names[nameIndex]} ${lastNames[lastNameIndex]}';
}

List<String> names = ['Ali', 'Hassan', 'Gholi', 'Asghar', 'Kazem'];
List<String> lastNames = [
  'Aliiii',
  'Hassaniii',
  'Gholiiii',
  'Asghariii',
  'Kazemiii'
];
