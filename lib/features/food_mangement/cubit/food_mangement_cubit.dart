import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:restaurant/my_app.dart';
import 'package:restaurant/features/food_mangement/models/options_model.dart';
import 'package:restaurant/shared/resources/image_resources.dart';
import 'package:restaurant/translations/locale_keys.g.dart';

part 'food_mangement_state.dart';

class FoodManagementCubit extends Cubit<FoodManagementState> {
  FoodManagementCubit() : super(FoodManagementInitial());

  static final FoodManagementCubit _foodManagementCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static FoodManagementCubit get instance => _foodManagementCubit;
  int radio = 0;
  int currentIndex = 0;

  void changeRadio(int radio) {
    this.radio = radio;
    emit(ChangeRadio(value: this.radio));
    emit(ChangeColor());
  }
  void changePage(int page) {
    currentIndex = page;
    emit(ChangeRadio(value: currentIndex));
    emit(ChangeColor());
  }

  List<OptionsModel> options = [
    OptionsModel(id: 1, name: LocaleKeys.profile.tr(), image: ImageResources.myProfile),
    OptionsModel(id: 2, name: LocaleKeys.bankInfo.tr(), image: ImageResources.creditCar),
    OptionsModel(id: 3, name: LocaleKeys.addFood.tr(), image: ImageResources.addFood),
    OptionsModel(id: 4, name: LocaleKeys.categories.tr(), image: ImageResources.cats),
    OptionsModel(id: 5, name: LocaleKeys.language.tr(), image: ImageResources.lang),
    OptionsModel(id: 6, name: LocaleKeys.expenseReport.tr(), image: ImageResources.report),
    OptionsModel(
        id: 7, name: LocaleKeys.privacyPolicy.tr(), image: ImageResources.privacy),
    OptionsModel(id: 8, name: LocaleKeys.conversation.tr(), image: ImageResources.myChat),
    OptionsModel(id: 9, name: LocaleKeys.logOut.tr(), image: ImageResources.logOut),
  ];
}
