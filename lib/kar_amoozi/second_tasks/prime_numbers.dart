void main() {
  List<int> primeNumbers = [];
  for (int i = 2; i < 100; i++) {
    /// this is for baseMultiples
    if (i == 2 || i == 3 || i == 5 || i == 7) {
      primeNumbers.add(i);
    }
    if (i % 2 != 0 && i % 3 != 0 && i % 5 != 0 && i % 7 != 0) {
      primeNumbers.add(i);
    }
  }

  print(primeNumbers);
}
