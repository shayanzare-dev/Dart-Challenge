import 'interface_class.dart';
import 'products_data.dart';

class ProductsRepository implements InterfaceClass {
  ProductsData? productsData;

  @override
  add(ProductsData product) {
    productsData?.productList.add(product);
  }

  @override
  editProducts(int index, ProductsData product) {
    productsData?.productList.remove(product);
  }

  @override
  removeProducts(ProductsData product) {}

  @override
  displayProducts() {
    print(productsData?.productList);
  }
}
