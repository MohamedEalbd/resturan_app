class ProductModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final int quantity;
  final String image;
  final String typeSized;
  final List<Addons> addons;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.image,
    required this.typeSized,
    required this.addons,
  });
}

class Addons {
  final int id;
  final String name;
  final double count;

  Addons({
    required this.id,
    required this.name,
    required this.count,
  });
}
