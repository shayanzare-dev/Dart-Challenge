import 'dart:math';

void main(){
  greet();
}

void greet(){
  print('greeing user...');
  print(fetchUser());
}

String fetchUser(){
  final Random random = Random();
  final int nameIndex = random.nextInt(4);
  final int lastNameIndex = random.nextInt(4);

  return '${names[nameIndex]} ${lastNames[lastNameIndex]}';
}

List<String> names = ['Ali', 'Hassan', 'Gholi', 'Asghar', 'Kazem'];
List<String> lastNames = ['Aliiii', 'Hassaniii', 'Gholiiii', 'Asghariii', 'Kazemiii'];