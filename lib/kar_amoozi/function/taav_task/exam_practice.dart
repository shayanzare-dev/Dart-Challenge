import 'dart:math';

enum TypeSort { shortToLong, longToShort }

void main() {
  final result = sorted([43, 22, 1, 100, 10, 11]);
  print(result);
}

List<int> randomInitialize() {
  List<int> resultValue = [];
  int count = 0;
  while (count <= 8) {
    int rnd = Random().nextInt(9);
    if (!resultValue.contains(rnd)) {
      resultValue.add(rnd);
      count++;
    }
  }
  return resultValue;
}

List<List<int>> sorted(List<int> randomList) {
  List<int> shortSortedList = [];
  List<int> longSortedList = [];
  List<int> duplicateListLong = [...randomList];

  for (int j = 0; j < randomList.length; j++) {
    int minimum = duplicateListLong.first;
    int maximum = duplicateListLong.first;
    for (int i = 0; i < duplicateListLong.length; i++) {
      if (duplicateListLong[i] < minimum) {
        minimum = duplicateListLong[i];
      } else {
        maximum = duplicateListLong[i];
      }
    }
    shortSortedList.add(minimum);
    longSortedList.add(maximum);
    duplicateListLong.remove(minimum);
  }
  return [shortSortedList, longSortedList];
}
