import 'package:restaurant/features/home/models/product_model.dart';

class MyOrder {
  final int id;
  final int orderNumber;
  final int requestNumbers;
  final String name;
  final String image;
  final String date;
  final String status;
  final ProductModel productModel;

  MyOrder({
    required this.id,
    required this.name,
    required this.image,
    required this.date,
    required this.status,
    required this.orderNumber,
    required this.requestNumbers,
    required this.productModel,
  });
}
