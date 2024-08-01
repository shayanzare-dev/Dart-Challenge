import 'dart:io';

int safeGetNumber({required String printValue}) {
  while (true) {
    print('$printValue:');
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
