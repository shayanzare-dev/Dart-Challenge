import 'dart:io';

void main() {
  print('input:');
  int? input = int.tryParse(stdin.readLineSync()!);

  for (int i = input!; i >= 1; i--) {
    if (i >= (input/2)) {
      print(i * 2 - input);
    }
  }
}
