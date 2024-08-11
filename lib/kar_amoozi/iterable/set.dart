void main() {
  /// remove repeat item
  List<int> list = [32, 12, 11, 423, 11, 12];
  list = list.toSet().toList();
  final Set<int> set = {1, 23, 90, 12};
  print(set.elementAt(0));
  print(set.elementAtOrNull(12));
}
