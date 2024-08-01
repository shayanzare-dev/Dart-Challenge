import 'dart:io';

void main() {
  print('input:');
  final String? input = stdin.readLineSync();
  int? number;
  if (input != null) {
    number = int.tryParse(input);
    if (number != null) {
      int sum = 0;
      int addition = 1;
      for (int i = 0; i < number; i++) {
        sum += addition;
        addition++;
      }
      print(sum);
    }
  }
}
