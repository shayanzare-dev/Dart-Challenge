// void main() {
//   print(factoril(6));
// }
//
// int factoril(int number) {
//   int? result;
//   print("salam");
//   if (number == 1) {
//     return 1;
//   } else {
//     result = number * factoril(number - 1);
//     //   print(result);
//   }
//   return result;
// }

void main() {
  // print(add(5));
  List<int> a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (int i = 0; i < a.length; i++) {
    if (a[i] == 7) {
      print("peyda shod = ${i + 1}");
      break;
    } else {
      continue;
    }
  } // روش با استفاده از while

}

int add(int number) {
  if (number == 1) {
    return 1;
  } else {
    return number * add(number - 2);
  }
}
