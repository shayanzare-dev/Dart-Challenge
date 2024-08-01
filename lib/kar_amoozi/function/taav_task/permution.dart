void main() {
  const value = 'abcd';
  permutation(value: value);
}

void permutation({required String value}) {
  List<List<String>> resultList = [];
  List<String> firstList = value.split('');
  List<String> secondList = [...firstList];
  //
  for (int i = 1; i < firstList.length; i++) {
    for (int j = 0; j < firstList.length; j++) {
      final String temp = secondList[j];
      secondList[j] = secondList[i];
      secondList[i] = temp;
      print(secondList);
      secondList = firstList.toList();
      /*final String temp = secondList[j];
      secondList[j] = firstList[i];
      secondList[i] = temp;
      print(secondList);*/
    }
  }
}
/*
List<String> permutation({required String value}) {
  List<String> resultList = [];
  List<String> firstList = value.split('');

  for (int i = 0; i < firstList.length; i++) {
    int selectedIndex = i;
    String newItem = firstList[selectedIndex];
    List<String> secondList = [...firstList];
    secondList.removeAt(selectedIndex);
    for (final String item in secondList) {
      newItem += item;
    }
    resultList.add(newItem);
    // resultList.add(newItem.split('').reversed.join());
  }
  return resultList;
}


 */

int factorial({required String value}) {
  int sum = 1;
  for (int i = value.length; i >= 1; i--) {
    sum *= i;
  }
  return sum;
}
