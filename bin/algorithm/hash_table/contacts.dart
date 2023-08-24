import 'dart:io';

Map<String, int> contactsList = {};

void main() {
  //test();
  for (int i = 1; i <= 2; i++) {
    add();
  }
  search();
}

void add() {
  print('name:');
  String? name = stdin.readLineSync() ?? '';
  print('number:');
  int? number = int.tryParse(stdin.readLineSync()!);
  contactsList.addAll({name: number!});
}

void search() {
  print('insert name:');
  String? name = stdin.readLineSync() ?? '';
  contactsList.containsKey(name)
      ? print(contactsList[name])
      : print('not found');
}
