void main() {}

void checkNull() {
  String? name;
  // 1-
  String test1 = name ?? 'name variable is null';
  // 2-
  if (name == null) {
    print('name is null');
  }
  // 3-
}

void nullItem() {
 ////
}
