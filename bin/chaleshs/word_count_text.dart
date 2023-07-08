import 'dart:io';

void main() {
  print('text input:');
  String text = stdin.readLineSync()!;
  List<String> textIndex = text.split(' ');
  int i = 0;
  while (i < textIndex.length) {
    i++;
    var count = textIndex.where((element) => element.length == i).length;
    if (count > 0) {
      print('$count ta $i harfi');
    }
  }
}
