import 'dart:io';

int sum = 0;

void main() {
  int remain;
  print('input:');
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    int? number = int.tryParse(input);

    while (true) {
      if (number != null) {
        remain = number % 10;
        number = number ~/ 10;
        if (remain > 0) {
          sum += remain;
        } else {
          break;
        }
      }
    }
    print(sum);
  }
}
