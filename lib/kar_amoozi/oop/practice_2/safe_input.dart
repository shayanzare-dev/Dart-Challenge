import 'dart:io';

int safeGet({required String value}) {
  while (true) {
    print('$value:');
    String? input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      int? number = int.tryParse(input);
      if (number != null) {
        return number;
      }
    } else {
      continue;
    }
  }
}
