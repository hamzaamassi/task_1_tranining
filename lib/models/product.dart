class Product {
  final String imagePath;
  final String title;
  final String type;
  final String cost;
  final String realCost;
  final String starNum;
  late bool? favorite = true;

  Product(this.imagePath, this.title, this.type, this.cost, this.realCost,
      this.starNum,
      [bool? favorite]);
}
