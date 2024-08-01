void main() {
  print(cancateNumbers(1234));
}

int factorial(int number) {
  if (number >= 65) {
    // base case
    return 1;
  }
  print(number);
  // recursive case
  return number + factorial(++number);
}

int cancateNumbers(int number) {
  int temp = number % 10;
  if (temp < 1) {
    return temp;
  }
  return temp + cancateNumbers(number ~/ 10);
}
