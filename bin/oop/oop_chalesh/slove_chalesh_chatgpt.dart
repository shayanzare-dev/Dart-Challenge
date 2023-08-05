import 'dart:io';

class Product {
  String? name;
  int? number;
  int? price;

  Product(this.name, this.number, this.price);
}

abstract class ProductRepository {
  void addProduct(Product product);

  void removeProduct(int index);

  void editProduct(int index, Product newProduct);

  List<Product> getFinishedProducts();

  List<Product> getAllProducts();
}

class InMemoryProductRepository implements ProductRepository {
  List<Product> productsList = [];

  @override
  void addProduct(Product product) {
    productsList.add(product);
    productsList.sort((a, b) => a.name!.compareTo(b.name!));
  }

  @override
  void removeProduct(int index) {
    productsList.removeAt(index);
  }

  @override
  void editProduct(int index, Product newProduct) {
    productsList[index] = newProduct;
  }

  @override
  List<Product> getFinishedProducts() {
    return productsList.where((product) => product.number! < 5).toList();
  }

  @override
  List<Product> getAllProducts() {
    return productsList;
  }
}

class ProductManager {
  ProductRepository repository;
  ProductManager(this.repository);

  void addProduct() {
    print('Product name:');
    String? name = stdin.readLineSync();
    print('Product number:');
    int? number = int.tryParse(stdin.readLineSync()!);
    print('Product price:');
    int? price = int.tryParse(stdin.readLineSync()!);
    Product product = Product(name, number, price);
    repository.addProduct(product);
    print('Product added successfully');
  }

  void removeProduct() {
    print('Which product do you want to remove?');
    int? index = int.tryParse(stdin.readLineSync()!);
    repository.removeProduct(index! - 1);
    print('Product removed successfully');
  }

  void editProduct() {
    print('Which product do you want to edit?');
    int? index = int.tryParse(stdin.readLineSync()!);

    print('New product name:');
    String? newName = stdin.readLineSync();
    print('New product number:');
    int? newNumber = int.tryParse(stdin.readLineSync()!);
    print('New product price:');
    int? newPrice = int.tryParse(stdin.readLineSync()!);

    Product newProduct = Product(newName, newNumber, newPrice);
    repository.editProduct(index! - 1, newProduct);
    print('Product edited successfully');
  }

  void displayFinishedProducts() {
    List<Product> finishedProducts = repository.getFinishedProducts();
    print(finishedProducts);
  }

  void displayAllProducts() {
    List<Product> allProducts = repository.getAllProducts();
    print(allProducts);
  }

  void run() {
    while (true) {
      print('1- Add product');
      print('2- Display all products');
      print('3- Remove product');
      print('4- Edit product');
      print('5- Display finished products');
      print('6- Exit');
      int? input = int.tryParse(stdin.readLineSync()!);
      switch (input) {
        case 1:
          addProduct();
          break;
        case 2:
          displayAllProducts();
          break;
        case 3:
          removeProduct();
          break;
        case 4:
          editProduct();
          break;
        case 5:
          displayFinishedProducts();
          break;
        case 6:
          return;
      }
    }
  }
}

void main() {
  ProductRepository repository = InMemoryProductRepository();
  ProductManager manager = ProductManager(repository);
  manager.run();
}