import 'dart:io';

extension Input on int {
  void input() {
   print('input:');
    int? input = int.tryParse(stdin.readLineSync()!);
  }
}
