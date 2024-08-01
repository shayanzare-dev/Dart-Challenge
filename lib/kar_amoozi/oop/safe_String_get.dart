import 'dart:io';

String safeStringGet({required String value}) {
  while (true) {
    print('$value:');
    String? input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      return input;
    } else {
      continue;
    }
  }
}
