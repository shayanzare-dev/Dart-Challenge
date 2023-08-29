import 'dart:io';

mixin Input {
  late final int input;
}

class GetNumber with Input {
  GetNumber() {
    print('input number:');
    input = int.tryParse(stdin.readLineSync()!)!;
  }
}

void main() {
  GetNumber getNumber = GetNumber();
  print(getNumber.input);
}
