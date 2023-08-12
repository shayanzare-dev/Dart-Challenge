void main() {
  List<int> list1 = [2, 4, 67, 32];
  print(count(list1));
}

int count(List list) {
  if (list.isEmpty) {
    return 0;
  }
  return 1 + count(list.sublist(1));
}
/*
    count([2, 4, 67, 32]) = 1 + count([4, 67, 32]) // list is not empty
    count([4, 67, 32]) = 1 + count([67, 32]) // list is not empty
    count([67, 32]) = 1 + count([32]) // list is not empty
    count([32]) = 1 + count([]) // list is not empty
    count([]) = 0 // list is empty
 */
