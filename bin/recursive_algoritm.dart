
void main() {
  List<int> list1 = [1, 2, 344, 54];
  int i = 0;
  arr(list1.length, i);
}

int arr(int listLenght, int i) {
  List<int> list1 = [4, 2, 344, 54];
  print(list1[i]);
  if (listLenght == 1) {
    return listLenght;
  } else {
    return arr(listLenght - 1, i + 1);
  }
}
