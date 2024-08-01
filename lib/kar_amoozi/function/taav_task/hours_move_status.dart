import 'dart:io';

void main() {
  const int row = 8;
  const int column = 8;
  horseMove(globalRow: row, globalColumn: column);
}

void horseMove({required int globalRow, required int globalColumn}) {
  int row = 5;
  int column = 5;
  for (int c = 1; c <= globalColumn; c++) {
    for (int r = 1; r <= globalRow; r++) {
      // % => horse
      // #`=> status
      if (r == row && c == column) {
        stdout.write('  %');
      } else if (r == row - 1 && c == column - 2) {
        stdout.write('  #');
      } else if (r == row + 1 && c == column - 2) {
        stdout.write('  #');
      } else if (r == row - 2 && c == column + 1) {
        stdout.write('  #');
      } else if (r == row - 2 && c == column - 1) {
        stdout.write('  #');
      } else if (r == row + 2 && c == column - 1) {
        stdout.write('  #');
      } else if (r == row + 2 && c == column + 1) {
        stdout.write('  #');
      } else if (r == row + 1 && c == column + 2) {
        stdout.write('  #');
      } else if (r == row - 1 && c == column + 2) {
        stdout.write('  #');
      } else {
        stdout.write('  *');
      }
    }
    print('');
  }
}
