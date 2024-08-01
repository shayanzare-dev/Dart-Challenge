void main() {
  final bool binaryValues = binarySearch(
      numbersList: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], target: 100);
  if (binaryValues) {
    print('yes is find');
  } else {
    print('no isn\'t find');
  }
}

/// numbers must have the same of type and sorted
bool binarySearch({required List<int> numbersList, required int target}) {
  bool isTarget = false;

  for (int i = 0; i < numbersList.length; i++) {
    int first = numbersList.first;
    int last = numbersList.last;
    int middle = (last) ~/ 2;
    if (target == middle || target == first || target == last) {
      isTarget = true;
    } else if (target > middle) {
      numbersList.removeRange(first - 1, middle);
    } else if (target < middle) {
      numbersList.removeRange(middle - 1, last);
    }
  }
  return isTarget;
}

bool linearSearch({required List<int> numbersList, required int target}) {
  bool isTarget = false;
  for (final int item in numbersList) {
    if (item == target) {
      isTarget = true;
    }
  }
  return isTarget;
}
