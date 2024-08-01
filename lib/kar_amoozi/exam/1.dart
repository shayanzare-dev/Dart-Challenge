void main() {
  List<num> numbersList = [2, 3, 55, 111, 12, 12, 111, 21, 1];
  findMaxMin(numbersList: numbersList);
  print(showRepeatNumber(numberList: numbersList));
  print(findAvg(numbersList: numbersList));
}

double findAvg({required List<num> numbersList}) {
  num sum = 0;
  for (int i = 0; i < numbersList.length; i++) {
    sum += numbersList[i];
  }
  return sum / numbersList.length;
}

void findMaxMin({required List<num> numbersList}) {
  num? max;
  num? min;
  for (int i = 0; i < numbersList.length; i++) {
    if (max != null && min != null) {
      if (numbersList[i] > max) {
        max = numbersList[i];
      } else if (numbersList[i] < min) {
        min = numbersList[i];
      }
    } else {
      max = numbersList[i];
      min = numbersList[i];
    }
  }
  print('max = $max');
  print('min =  $min');
}

List<num> showRepeatNumber({required List<num> numberList}) {
  List<num> list2 = [...numberList];
  List<num> resultList = [];
  for (int i = 0; i < numberList.length; i++) {
    num index = list2.first;
    for (int j = 1; j < list2.length; j++) {
      if (index == list2[j]) {
        resultList.add(index);
      }
    }
    list2.remove(index);
  }
  return resultList;
}
