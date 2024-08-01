void main() {
  const List<int> list = [1, 23, 4, 4, 122, 11, 11, 100, 10, 1];
  print(removeRepeatNumber(charactersList: list));
}

List<int> removeRepeatNumber({required List<int> charactersList}) {
  List<int> list2 = [...charactersList];
  List<int> resultList = [...list2];
  for (int i = 0; i < charactersList.length; i++) {
    int index = list2.first;
    for (int j = 1; j < list2.length; j++) {
      if (index == list2[j]) {
        print('repeat index = $index');
        resultList.remove(index);
      }
    }
    list2.remove(index);
  }
  return resultList;
}
