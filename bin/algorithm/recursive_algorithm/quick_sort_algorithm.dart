List<int> quickSort(List<int> array) {
  if (array.length < 2) {
    return array;
  } else {
    int pivot = array[0];
    List<int> less = [];
    List<int> greater = [];
    for (int i = 1; i < array.length; i++) {
      if (array[i] <= pivot) {
        less.add(array[i]);
      } else {
        greater.add(array[i]);
      }
    }
    return quickSort(less) + [pivot] + quickSort(greater);
  }
}

void main() {
  print(quickSort([10, 5, 2, 3]));
}
