import 'dart:io';

enum StatusPrice {
  oneThousend,
  twoThousend,
  fiveThousend,
  tenThousend,
}

int getPrice(StatusPrice priceType) {
  switch (priceType) {
    case StatusPrice.oneThousend:
      return 1000;

    case StatusPrice.twoThousend:
      return 2000;

    case StatusPrice.fiveThousend:
      return 5000;

    case StatusPrice.tenThousend:
      return 10000;
  }
}

final int status1 = getPrice(StatusPrice.oneThousend);
final int status2 = getPrice(StatusPrice.twoThousend);
final int status3 = getPrice(StatusPrice.fiveThousend);
final int status4 = getPrice(StatusPrice.tenThousend);
List<int> statusNumber = [];

void main() {
  print('price:');
  int? price = int.tryParse(stdin.readLineSync()!);
//
  if (price! - (status4 + status3) == 0) {
    print('$price=>$status4 + $status3');
  }
  if (price - (status4 + status2) == 0) {
    print('$price=>$status4 + $status2');
  }
  if (price - (status4 + status1) == 0) {
    print('$price=>$status4 + $status1');
  }
//
  if (price - (status3 + status4) == 0) {
    print('$price=>$status3 + $status4');
  }
  if (price - (status3 + status2) == 0) {
    print('$price=>$status3 + $status2');
  }
  if (price - (status3 + status1) == 0) {
    print('$price=>$status3 + $status1');
  }
//

  if (price - (status2 + status4) == 0) {
    print('$price=>$status2 + $status4');
  }
  if (price - (status2 + status3) == 0) {
    print('$price=>$status2 + $status3');
  }
  if (price - (status2+ status1) == 0) {
    print('$price=>$status2 + $status1');
  }


  normalCalculate(price, status: status1);
  normalCalculate(price, status: status2);
  normalCalculate(price, status: status3);
  normalCalculate(price, status: status4);
}

void normalCalculate(int? price, {required int status}) {
  while (true) {
    if (price! >= status && (price % status == 0)) {
      price -= status;
      statusNumber.add(status);
    } else if (price >= status) {
      price -= status;
      statusNumber.add(status);
    } else if (price > 0 && price < status) {
      statusNumber.add(price);
      break;
    } else {
      break;
    }
  }
  print(statusNumber);
  statusNumber.clear();
}
