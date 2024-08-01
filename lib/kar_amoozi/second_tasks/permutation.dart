import 'dart:io';

Set<String> charactersList = {};

List<Set<String>> allStatusWords = [];
int sum = 1;

void main() {
  print('input word:');
  String? input = stdin.readLineSync();
  if (input != null) {
    charactersList = input.split('').toSet();

    /// calculate factorial values
    for (int i = 0; i < charactersList.length; i++) {
      sum *= charactersList.length - i;
    }

    /// limited on 3 word
    for (int i = 0; i < charactersList.length; i++) {
      for (int j = 0; j < charactersList.length; j++) {
        for (int h = 0; h < charactersList.length; h++) {
          if (i != j && i != h && j != h)
            allStatusWords.add({
              charactersList.toList()[i],
              charactersList.toList()[j],
              charactersList.toList()[h]
            });
        }
      }
    }
  } else {
    print('input word:');
    input = stdin.readLineSync();
  }
  print(allStatusWords);
}
