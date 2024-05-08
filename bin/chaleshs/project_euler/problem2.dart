void main() {
  int first = 0;
  int second = 1;
  while (first < 4000000) {
    int sum = first + second;
    if (isEven(sum)) {
      print(sum);
    }
    first = second;
    second = sum;
  }
}

bool isEven(int inputNumber) {
  bool aval = true;
  if (inputNumber % 2 == 0) {
    aval = true;
  } else {
    aval = false;
  }
  return aval;
}
