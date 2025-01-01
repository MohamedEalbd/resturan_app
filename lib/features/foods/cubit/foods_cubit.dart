import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/my_app.dart';
import 'package:restaurant/features/foods/models/foods_model.dart';
import 'package:restaurant/shared/resources/image_resources.dart';

import '../../../translations/locale_keys.g.dart';

part 'foods_state.dart';

class FoodsCubit extends Cubit<FoodsState> {
  FoodsCubit() : super(FoodsInitial());
  static final FoodsCubit _foodsCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static FoodsCubit get instance => _foodsCubit;

  int currentIndex = 0;
  bool switchOne = false;
  bool switchTwo = false;
  bool switchThree = false;
  bool switchFour = false;

  void changeSwitchOne(bool value) {
    switchOne = value;
    emit(ChangeSwitchOne(value: switchOne));
    emit(ChangeColor());
  }

  void changeSwitchTwo(bool value) {
    switchTwo = value;
    emit(ChangeSwitchOne(value: switchTwo));
    emit(ChangeColor());
  }

  void changeSwitchThree(bool value) {
    switchThree = value;
    emit(ChangeSwitchOne(value: switchThree));
    emit(ChangeColor());
  }

  void changeSwitchFour(bool value) {
    switchFour = value;
    emit(ChangeSwitchOne(value: switchFour));
    emit(ChangeColor());
  }

  List<FoodsModel> allFoods = [
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
  ];
  List<FoodsModel> reviewsFoods = [
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
    FoodsModel(
      id: 1,
      name: "Burger",
      image: ImageResources.burger,
      price: 250.00,
      rate: 4.5,
    ),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeValue(value: currentIndex));
    emit(ChangeColor());
  }

  List words = [LocaleKeys.allFoods.tr(), LocaleKeys.reviews.tr()];
}
