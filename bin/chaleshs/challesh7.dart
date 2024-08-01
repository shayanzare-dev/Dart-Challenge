import 'dart:io';

void main() {
  const int money = 200000;
  print('input 1:');
  int? input = int.tryParse(stdin.readLineSync()!);
  if (input! < money) {
    input = input - (input * 0.02).toInt();
    print(input);
  } else if (input > money && input < 400000) {
    input = input - (input * 0.03).toInt();
    print(input);
  } else if (input > 400000) {
    input = input - (input * 0.05).toInt();
    print(input);
  }
}
