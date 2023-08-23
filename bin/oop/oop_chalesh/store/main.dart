import 'products_data.dart';

void main() {
  ProductsData productsData = ProductsData('shayan', 23, 500);

  for (final item in productsData.productList) {
    //  print(item.productName);
  }
}
