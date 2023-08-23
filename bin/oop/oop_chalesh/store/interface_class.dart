import 'products_data.dart';

abstract class InterfaceClass {
  add(ProductsData product);

  removeProducts(ProductsData product);

  editProducts(int index, ProductsData product);

  displayProducts();
}
