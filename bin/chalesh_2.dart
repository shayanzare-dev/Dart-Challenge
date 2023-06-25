import 'dart:io';

void main() {
  String star = "*";
  String space = " ";
  print("tool:");
  int? tool = int.tryParse(stdin.readLineSync()!);
  print("arz:");
  int? arz = int.tryParse(stdin.readLineSync()!);
  for (int i = 1; i <= arz!; i++) {
    if (i == 1 || i == arz) {
      print(star * tool!);
    } else {
      print(star + (space * (tool! - 2)) + star);
    }
  }
}
