void main(List<String> arguments) {
  sumMultiples();
}

bool checkMultiples(int i) {
  bool multiples = true;
  if (i % 3 == 0 || i % 5 == 0) {
    multiples = true;
  } else {
    multiples = false;
  }
  return multiples;
}

int sumMultiples() {
  int sum = 0;
  for (int i = 1; i < 1000; i++) {
    if(checkMultiples(i)){
      sum += i;
    }
  }
  print("sum multiples numbers = $sum");
    return sum;
}
