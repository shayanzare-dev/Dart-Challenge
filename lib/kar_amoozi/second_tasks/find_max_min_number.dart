void main() {
  num? max;
  num? min;
  List<num> numbersList = [2, 3, 555, 12, 111, 21, 1];
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
  print(max);
  print(min);
}
