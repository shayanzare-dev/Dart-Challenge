import 'dart:io';

Map<int, int> secondList = {};

void main() {
  print('input:');
  String input = stdin.readLineSync()!;
  List<String> firstList = input.split(' ');
  recordCharactersLength(firstList);
  secondList.forEach((key, value) {
    print('$key harfi =>$value ta');
  });
}

void recordCharactersLength(List<String> firstList) {
  for (final index in firstList) {
    if (secondList.containsKey(index.length)) {
      secondList[index.length] = secondList[index.length]! + 1;
    } else {
      secondList[index.length] = 1;
    }
  }
}
