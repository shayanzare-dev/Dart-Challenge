import 'dart:io';

List<String> listCharacter1 = [];
List<String> listCharacter2 = [];

void main() {
  print('input:');
  String? first = stdin.readLineSync();
  bool isPalindromic = true;
  while (true) {
    if ((first != '') && (first != null)) {
      listCharacter1 = first.split('');
      final listCharacter2 = listCharacter1.reversed.toList();
      for (int i = 0; i < listCharacter1.length / 2; i++) {
        if (listCharacter1[i] != listCharacter2[i]) {
          isPalindromic = false;
        }
      }
      break;
    } else {
      print('input:');
      first = stdin.readLineSync();
    }
  }
  print(isPalindromic == true ? 'yes' : 'no');
}
