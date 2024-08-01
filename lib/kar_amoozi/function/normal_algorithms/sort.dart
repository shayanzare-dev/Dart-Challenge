void main() {
  const List<int> numbers = [5, -1000, -9, 11, 8521, -10];
  print(sortBigToSmall(numbers: numbers));
}

List<int> sortBigToSmall({required List<int> numbers}) {
  List<int> duplicate = numbers.toList();
  List<int> sortedList = [];

  for (int i = 0; i < numbers.length; i++) {
    int target = duplicate.first;
    for (int j = 0; j < duplicate.length; j++) {
      if (target > 0) {
        print(target);
        if (target < duplicate[j]) {
          target = duplicate[j];
        }
      } else {
        if (target > duplicate[j]) {
          target = duplicate[j];
        }
      }
    }
    sortedList.add(target);
    duplicate.remove(target);
  }
  return sortedList;
}
