import 'dart:io';

List<int> charactersList = [];
List<int> reversedCharactersList = [];
// it has problem in for null-check
void main() {
  int remain;
  print('input:');
  int? number = int.tryParse(stdin.readLineSync()!);
  bool isPalindromic = true;
  while (true) {
    if (number != null) {
      for (int i = 0; number! > 0; i++) {
        remain = number % 10;
        number = number ~/ 10;
        charactersList.add(remain);
      }
      break;
    } else {
      print('input:');
      number = int.tryParse(stdin.readLineSync()!);
    }
  }
  reversedCharactersList = charactersList.reversed.toList();
  for (int i = 0; i < charactersList.length / 2; i++) {
    if (charactersList[i] != reversedCharactersList[i]) {
      isPalindromic = false;
    }
  }

  print(isPalindromic ? 'Yes' : 'No');
}
