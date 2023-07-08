import 'dart:io';

List<Map<String, dynamic>> productsList = [];
List<Map<String, dynamic>> productsCarts = [];

void main() {
  while (true) {
    print('''1-products list
       2-add products list
       3-add to cart
       4-view cart
       5-exit''');
    int? inputMenu = int.tryParse(stdin.readLineSync()!);
    switch (inputMenu) {
      case 1:
        productsListFunction();
        break;
      case 2:
        addProductsList();
        break;
      case 3:
        addToCart();
        break;
      case 4:
        viewCart();
        break;
      case 5:
        exit(0);
      default:
        print("please valid number");
        break;
    }
  }
}

void productsListFunction() {
  if (productsList.isEmpty) {
    print("is empty");
  } else {
    print(productsList);
  }
}

void addProductsList() {
  print("what is add list?:");
  String? product = stdin.readLineSync()!;
  print("what is color?:");
  String? color = stdin.readLineSync()!;
  print("price:");
  int? price = int.tryParse(stdin.readLineSync()!);
  productsList.add({"product": product, "color": color, "price": price});
}

void addToCart() {
  print("what is product name?:");
  String? product = stdin.readLineSync()!;
  for (var ii in productsList) {
    bool test = ii.containsValue(product);
    if (test) {
      productsCarts = productsList.toList();
    }
  }
}

void viewCart() {
  if (productsList.isEmpty) {
    print("is empty");
  } else {
    print("products carts = $productsCarts");
  }
}
