class ProductModel {
  final String image;
  final String productname;
  final String importedFrom;
  final double price;
  final double qty;
  final String offerColor;
  ProductModel(this.image, this.productname, this.importedFrom, this.price,
      this.qty, this.offerColor);
}

List<ProductModel> productsData = [
  new ProductModel("assets/img/apple.png", "Red Apple", "Imported Simla",
      120.00, 1.0, "green"),
  new ProductModel("assets/img/grapes2.png", "Green Grapes", "Chilled fresh",
      100.00, 1.0, "green"),
  new ProductModel("assets/img/orange-2.png", "Orange", "Sweet and Juicy",
      120.00, 1.0, "blue"),
  new ProductModel("assets/img/orange-small.png", "Lenom", "Most Demanded",
      120.00, 1.0, "bluegreen"),
  new ProductModel("assets/img/apple.png", "Red Apple ", "Imported Simla",
      120.00, 1.0, "green"),
  new ProductModel("assets/img/grapes2.png", "Green Grapes", "Chilled fresh",
      100.00, 1.0, "green"),
];
