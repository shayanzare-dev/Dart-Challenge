import 'dart:io';

List<String> listCharacter1 = [];
List<String> listCharacter2 = [];

void main() {
  print('first:');
  String? first = stdin.readLineSync();
  while (true) {
    if ((first != '') && (first != null)) {
      listCharacter1 = first.split('');
      listCharacter2 = listCharacter1.reversed.toList();
      break;
    } else {
      print('first:');
      first = stdin.readLineSync();
    }
  }
  if (listCharacter1.join() == listCharacter2.join()) {
    print('yes');
  } else {
    print('no');
  }
}
