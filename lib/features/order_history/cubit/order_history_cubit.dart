import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/my_app.dart';
import 'package:restaurant/features/home/models/my_order.dart';
import 'package:restaurant/features/home/models/product_model.dart';
import 'package:restaurant/shared/resources/image_resources.dart';

import '../../../translations/locale_keys.g.dart';

part 'order_history_state.dart';

class OrderHistoryCubit extends Cubit<OrderHistoryState> {
  OrderHistoryCubit() : super(OrderHistoryInitial());

  static final OrderHistoryCubit _historyCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static OrderHistoryCubit get instance => _historyCubit;
  int index = 0;

  void selectWord(int order) {
    index = order;
    emit(SelectWord(currentIndex: index));
    emit(ChangeColor());
  }

  List words = [LocaleKeys.all.tr(),LocaleKeys.delivered.tr()];

  List<MyOrder> orders = [
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
    MyOrder(
      id: 1,
      name: "Order ",
      image: ImageResources.pizza,
      date: "19 aug 2024 23:21",
      status: "pending",
      orderNumber: 545125,
      requestNumbers: 2,
      productModel: ProductModel(
        id: 1,
        name: "Pizza",
        description: "",
        price: 250.00,
        quantity: 1,
        image: ImageResources.pizza,
        typeSized: "small",
        addons: [
          Addons(id: 1, name: "pepci", count: 1),
        ],
      ),
    ),
  ];
}
