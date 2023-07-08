import 'dart:io';
import 'dart:math';

void main() {
  randomVerifiCode();
}
List<int> randomVerifiCode() {
  List<int> randomList = [];
  for (var i = 1; i <= 7; i++) {
    int random = Random().nextInt(9);
    randomList.add(random);
  }
  for (var i = 0; i < randomList.length; i++) {
    stdout.write(randomList[i]);
  }
  return randomList;
}
