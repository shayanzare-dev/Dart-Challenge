import 'dart:io';

void main() {
  int month = 1;
  while (true) {
    print('Day:');
    int? day = int.tryParse(stdin.readLineSync()!);
    for (int i = 1; true; i++) {
      if (day! > 31) {
        month = i;
        if (month > 6) {
          day -= 30;
        } else {
          day -= 31;
        }
      } else {
        break;
      }
    }
    if (day == 0) {
      print('$month/${day + 31}');
    } else {
      print('$month/$day');
    }
  }
}
