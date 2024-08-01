void main() {
  const List<int> list = [1, 23, 4, 122, 11, 100, 85, 90, 120, 210];
  print(sortSmallToLong(charactersList: list));
}

List<int> sortSmallToLong({required List<int> charactersList}) {
  List<int> list = [];
  final List<int> duplicateList = [...charactersList];

  for (int i = 0; i < charactersList.length; i++) {
    int index = duplicateList.first;
    for (int j = 0; j < duplicateList.length; j++) {
      if (duplicateList[j] > index) {
        index = duplicateList[j];
      }
      if (j == duplicateList.length - 1) {
        list.add(index);
        duplicateList.remove(index);
      }
    }
  }
  return list;
}
