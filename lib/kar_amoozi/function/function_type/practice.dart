void main() {
  Function(int) Function(int) multiply = (int firstValue) {
    return (int secondValue) => secondValue * firstValue;
  };

  // استفاده از تابع multiply
  final Function(int) multiplyByTwo = multiply(2);
  print(multiplyByTwo(3)); // خروجی: 6



  var charCodes = [68, 97, 114, 116];

  charCodes.forEach(print);
}
