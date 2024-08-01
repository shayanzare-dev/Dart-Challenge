import 'dart:io';

void main() {
  elephantMove();
}

void elephantMove([int globalRow = 8, int globalColumn = 8]) {
  int mainRow = 5;
  int mainColumn = 3;
  int row2 = mainRow;
  int column2 = mainColumn;

  int row3 = mainRow - (mainColumn - 1);
  int column3 = 1;
  int row4 = mainRow + (mainColumn - 1);
  int column4 = 1;
  for (int c = 1; c <= globalColumn; c++) {
    for (int r = 1; r <= globalRow; r++) {
      if (r == row4 && c == column4) {
        // status 1
        stdout.write('  #');
        row4 = row4 - 1;
        column4 = column4 + 1;
      } else if (r < mainRow && r == row3 && c == column3) {
        // status 2
        stdout.write('  #');
        row3 = row3 + 1;
        column3 = column3 + 1;
      } else if (r == mainRow && c == mainColumn) {
        // status 3
        stdout.write('  #');
        mainRow = mainRow - 1;
        mainColumn = mainColumn + 1;
      } else if (r == row2 + 1 && c == column2 + 1) {
        // status 4
        stdout.write('  #');
        row2 = row2 + 1;
        column2 = column2 + 1;
      } else {
        stdout.write('  *');
      }
    }
    print('');
  }
}
