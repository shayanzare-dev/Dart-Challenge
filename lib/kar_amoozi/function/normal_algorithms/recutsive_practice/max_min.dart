void main() {
  List<int> list = [120, 1, 5, 2, 870, 9, 4];
  print(findMaxMin(list, list.first, list.first));
}

// max,min
String findMaxMin(List<int> numberList, int max, int min) {
  int maximum = max;
  int minimum = min;
  numberList.removeAt(0);
  if (numberList.length <= 1) {
    return '$maximum,$minimum';
  } else {
    if (maximum < numberList.first) {
      maximum = numberList.first;
    }

    if (minimum > numberList.first) {
      minimum = numberList.first;
    }
    return findMaxMin(numberList, maximum, minimum);
  }
}
