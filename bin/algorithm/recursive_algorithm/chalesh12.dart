import 'dart:io';

void main() {
  print('number return:?');
  int? numberReturn = int.tryParse(stdin.readLineSync()!);
  print('insert any number:');
  int? number = int.tryParse(stdin.readLineSync()!);
  recursiveFunction(numberReturn!, number!);
}

recursiveFunction(int numberReturn, int numberShow) {
  print(numberShow);
  //base case
  if (numberReturn <= 1) {
    return numberReturn;
  } else {
    // return case
    return recursiveFunction(numberReturn - 1, numberShow);
  }
}
