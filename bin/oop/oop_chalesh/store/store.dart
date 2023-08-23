import 'dart:io';
// enum Menu{
//
// }
List<String> productsList = [];
List<String> finishedProductsList = [];
int i = 0;

class Products {
  String? productName;
  int? productNumber;
  int? productPrice;

  void addProducts(int i) {
    print('product name:');
    productName = stdin.readLineSync()!;
    print('product number:');
    productNumber = int.tryParse(stdin.readLineSync()!);
    if (productName != null) {
      productsList.add('$i : [$productNumber * $productName]');
      productsList.sort();
      print('add is ok');
      if (productNumber! < 5) {
        finishedProductsList.add(productName!);
      }
    }
  }

  void removeProducts() {
    print('which one remove?!:');
    int? removeInput = int.tryParse(stdin.readLineSync()!);
    productsList.removeAt(removeInput! - 1);
    print('remove is ok;))');
  }

  void editProducts() {
    print(productsList);
    print('which one is edit?!');
    int? indexNumber = int.tryParse(stdin.readLineSync()!);
    productsList.removeAt(indexNumber! - 1);
    print('input new value=>');
    addProducts(indexNumber);
  }

  void displayFinishedProducts() {
    print(finishedProductsList);
  }
}

void main() {
  runCodes();
}

void runCodes() {
  Products products = Products();
  while (true) {
    print(
        '1-add products , 2-display product list , 3-remove products , 4-edit products , 5-show finished products , 6-exit');
    int? input = int.tryParse(stdin.readLineSync()!);
    switch (input) {
      case 1:
        i++;
        products.addProducts(i);
        break;
      case 2:
        print(productsList);
        break;
      case 3:
        products.removeProducts();
        break;
      case 4:
        products.editProducts();
        break;
      case 5:
        products.displayFinishedProducts();
      case 6:
        return;
    }
  }
}
