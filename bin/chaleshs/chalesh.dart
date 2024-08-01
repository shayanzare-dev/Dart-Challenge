void main() {
  int a = 1;
  int b = 2;
  int temporary = a;

  a = b;

  b = temporary;
  print('b=$b');
  print('a=$a');
}
