import 'dart:io';

void main() {
  int sum = 0;
  print('input:');
  int? input = int.tryParse(stdin.readLineSync()!);
  for (int i = 1; i <= input!; i++) {
    if ((i * 2) - 1 <= input) {
      sum += (i * 2) - 1;
      print((i * 2) - 1);
    }
  }
  print('sum fard number => $sum');
}
