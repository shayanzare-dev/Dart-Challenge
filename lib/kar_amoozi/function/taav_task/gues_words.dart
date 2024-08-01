import 'dart:io';

List<String> myWordsList = ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-'];
List<String> wrongGuesses = [];

void main() {
  const List<String> words = ['s', 'h', 'a', 'y', 'a', 'n', 'z', 'a', 'r', 'e'];
  bool isFirst = true;
  String valueMessage;
  while (true) {
    if (isFirst) {
      valueMessage = 'star the game';
      isFirst = false;
    } else {
      valueMessage = 'continue the game';
    }
    stdout.write(
        '1-$valueMessage , 2-show your wrong guesses list , 3-end of the game\nwhich one is your choose?:');
    String? input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      int? inputNumber = int.tryParse(input);
      switch (inputNumber) {
        case 1:
          calculateInputs(words);
          break;
        case 2:
          print(wrongGuesses);
          break;
        case 3:
          return;
      }
    }
  }
}

void calculateInputs(List<String> words) {
  showHideCharacters();
  String userInput = userGuess();
  bool isFind = false;
  for (int i = 0; i < words.length; i++) {
    if (userInput == words[i]) {
      myWordsList[i] = userInput;
      isFind = true;
    }
  }
  print(myWordsList.join());
  if (!isFind) {
    wrongGuesses.add(userInput);
    print('your guess is wrong');
  }
}

void showHideCharacters() {
  print(myWordsList.join());
}

String userGuess() {
  while (true) {
    stdout.write("what's your guess?!");
    String? guessInput = stdin.readLineSync();
    if (guessInput != null && guessInput.isNotEmpty) {
      return guessInput;
    } else {
      print('your input is null!');
      stdout.write("what's your guess?!");
      guessInput = stdin.readLineSync();
    }
  }
}
