import 'dart:io';

mixin Input on Test {
  late final int input;
}

class Test {}

class GetNumber extends Test with Input {
  GetNumber() {
    print('input number:');
    input = int.tryParse(stdin.readLineSync()!)!;
  }
}

void main() {
  final GetNumber getNumber = GetNumber();
  print(getNumber.input);
}
