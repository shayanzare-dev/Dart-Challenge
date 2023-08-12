import 'a1.dart';

void main() {
  String character = '-';
  a1(4);
  for (int i = 1; i <= 8; i++) {
    //  i == line
    // print.. == column
    if (i == column) {
      print('${character * (column - 1)}*${character*(8 - column)}');
    }
    print(character * 8);
  }
}

/*
String star = '-';
  int input = 5;
  for (int i = 1; i <= 8; i++) {
    if (i == input) {
      print('${(star * (input - 1))}*${star * (8 - input)}');
    } else {
      print(star * 8);
    }
  }
 */
