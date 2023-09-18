import 'dart:math';

void main() {
  print(randomVerifiCode());
}

List<int> randomVerifiCode() {
  List<int> randomList = [];
  for (var i = 0; i < 7; i++) {
    int random = Random().nextInt(9);
    randomList.add(random);
  }
  return randomList;
}
