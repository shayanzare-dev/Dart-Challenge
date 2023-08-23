class ProductsData {
  final String? productName;
  final int? productNumber;
  final int? productPrice;
  late final List<ProductsData> productList;

  /// formal constructor class products data:[ProductsData]
  ProductsData(this.productName, this.productNumber, this.productPrice){
    productList = [];
  }
}
