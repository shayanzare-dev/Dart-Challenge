import 'dart:io';

void main() {
  const int vipCount = 23;
  String star = '*';
  late List<int> list = [];
  for (int i = 1; i <= vipCount; i++) {
    list.add(i);
    if (i == 3 || i == 6 || i == 9 || i == 12 || i == 16 || i == 19) {
      print(star);
    } else {
      if (i == 13) {
        print(star);
      } else {
        stdout.write(star);
      }
    }
  }
}

class Products {
  final String name;
  final double price;
  final int quantity;

  Products(this.name, this.price, this.quantity);
}

class Store {
  final String storeName;
  List<Products> productList = [];

  void addProduct() {
    print('name:');
    String name = stdin.readLineSync()!;
    print('price:');
    double price = double.parse(stdin.readLineSync()!);
    print('quantity:');
    int? quantity = int.parse(stdin.readLineSync()!);

    productList.add(Products(name, price, quantity));
  }

  void removeProduct() {
    print('which one:');
    for (final item in productList) {
      print(item.name);
      print(item.price);
      print(item.quantity);
    }
  }

  void getTotalValue() {}

  Store(this.storeName);
}
