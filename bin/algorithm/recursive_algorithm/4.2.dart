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