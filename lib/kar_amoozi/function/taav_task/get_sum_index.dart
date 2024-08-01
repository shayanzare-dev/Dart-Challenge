void main() {
  List<int> list1 = <int>[1, 23, 12];
  print(peymayesh(list1, 0, 0));
}

int peymayesh(List<int> list1, int i, int sumP) {
  int sum = sumP;
  sum += list1[i];
  if (list1.length - 1 == i) {
    return sum;

    /// base case
  } else {
    return peymayesh(list1, i + 1, sum);

    /// recursive case
  }
}
