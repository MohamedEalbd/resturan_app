import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/features/coupon/screen/promotion_screen.dart';
import 'package:restaurant/my_app.dart';
import 'package:restaurant/features/home/screen/home_screen.dart';
import 'package:restaurant/features/order_history/screen/order_history_screen.dart';

import '../../../shared/resources/image_resources.dart';
import '../../quick/screen/quick_screen.dart';

part 'home_tap_state.dart';

class HomeTapCubit extends Cubit<HomeTapState> {
  HomeTapCubit() : super(HomeTapInitial());

  static final HomeTapCubit _homeTapCubit =
      BlocProvider.of(navigatorKey.currentContext!);
  static HomeTapCubit get instance => _homeTapCubit;

  final PageController controller = PageController();

  int currentIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    OrderHistoryScreen(),
    QuickScreen(),
    PromotionScreen(),
  ];

  List words = [
    {"title": "Home", "icon": ImageResources.myHome},
    {"title": "Favorites", "icon": ImageResources.bag},
    {"title": "Locked", "icon": ImageResources.dollar},
    {"title": "settings", "icon": ImageResources.lines},
  ];

  void changePage(int index) {
    currentIndex = index;
    emit(SelectPage(index: index));
    emit(ChangeColor());
  }

  void changePageController(int index) {
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
    emit(SelectPage(index: index));
  }
}
