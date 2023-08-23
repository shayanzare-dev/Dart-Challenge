import 'dart:io';
class Button {
  static int count = 0;

  static void addCount() {
    count++;
  }
}

void main() {
  while (true) {
    print('1-add count , 2-exit');
    int input = int.parse(stdin.readLineSync()!);
    if (input == 1) {
      Button.addCount();
    } else if (input == 2) {
      break;
    }
  }
  print(Button.count);
}

