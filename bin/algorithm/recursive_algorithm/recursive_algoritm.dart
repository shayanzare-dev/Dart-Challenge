void main() {
  const List list1 = <int>[1, 23, 54, 5, 2, 76, 9];
  peymayesh(list1.length - 1, list1, list1.length - list1.length + 0);
}

int peymayesh(int listLenght, List list1, int i) {
  int sum = 0;
  sum = list1[i] + sum;
  print(sum);
  if (listLenght == 0) {
    return 0;
    // base case
  } else {
    return peymayesh(listLenght - 1, list1, i + 1);
    // recursive case
  }
} // recursive algorithm

