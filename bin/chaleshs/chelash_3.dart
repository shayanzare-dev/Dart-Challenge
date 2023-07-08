import 'dart:io';

void main() {
  print("text:");
  String text = stdin.readLineSync()!;
  List<String> split = text.split(" ");
  for (int i = 0; i < split.length; i++) {
    print(split[i].substring(0, 1).toUpperCase() + split[i].substring(1, null));
  }
}
