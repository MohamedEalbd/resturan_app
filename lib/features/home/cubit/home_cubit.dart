import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/my_app.dart';
import 'package:restaurant/features/home/models/my_order.dart';
import 'package:restaurant/features/home/models/product_model.dart';

import '../../../shared/resources/image_resources.dart';
import '../../../translations/locale_keys.g.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static final HomeCubit _homeCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static HomeCubit get instance => _homeCubit;

  int currentIndex = 0;

  Future<void> changeIndex(int index) async {
    currentIndex = index;
    emit(ChangeValue(index: currentIndex));
    emit(ChangeColor());
  }

  List words = [
    LocaleKeys.approve.tr(),
    LocaleKeys.accepted.tr(),
    LocaleKeys.readyForPickUp.tr(),
    LocaleKeys.delivered.tr(),
  ];
  List titlesButton = [
    LocaleKeys.cancel.tr(),
    LocaleKeys.confirm.tr(),
  ];

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
  ];
}
