void main() {
  const List<int> list = [1, 2, 34, 12];
  final Iterable<int> newList = list.map((e) => e * 2);
  final int secondList = list.reduce((value, element) => value + element);
  print(secondList);
}
