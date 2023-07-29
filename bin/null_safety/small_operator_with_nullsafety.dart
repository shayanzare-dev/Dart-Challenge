import 'dart:io';

void main() {
  int? a = int.tryParse(stdin.readLineSync()!);
  var b = a ?? 'please valid number';
  print(b);
}
