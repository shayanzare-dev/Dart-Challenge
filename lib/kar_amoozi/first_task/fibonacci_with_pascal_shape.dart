import 'dart:io';

Set<int> fibonacci = {};
const String space = ' ';
const String star = '*';

void main() {
  print('maximum number:');
  String? input = stdin.readLineSync()!;
  while (true) {
    if (input != '' && input != null) {
      int? number = int.tryParse(input);
      if (number != null) {
        int a = 0;
        int b = 1;
        int c = 0;
        while (b <= number) {
          fibonacci.addAll({a, b, c});
          c = a + b;
          a = b;
          b = c;
        }
        for (int i = 1; i <= number; i = i + 2) {
          //
          for (int h = number; h >= i; h = h - 2) {
            stdout.write(space);
          }
          //
          for (int j = 1; j <= i; j++) {
            stdout.write(fibonacci.toList()[j-1]);
          }
          print('');
        }
      }
      break;
    } else {
      print('number:');
      input = stdin.readLineSync();
    }
  }
}
