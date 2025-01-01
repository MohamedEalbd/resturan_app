import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/my_app.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());
  static final SettingsCubit _settingsCubit =
      BlocProvider.of(navigatorKey.currentContext!);

  static SettingsCubit get instance => _settingsCubit;

  bool checkBoxOne = false;
  bool checkBoxTwo = false;

  void setCheckBoxOne(bool box) {
    checkBoxOne = box;
    emit(SelectCheckBox(isChecked: checkBoxOne));
    emit(ChangeColor());
  }

  void setCheckBoxTwo(bool box) {
    checkBoxTwo = box;
    emit(SelectCheckBox(isChecked: checkBoxTwo));
    emit(ChangeColor());
  }
}
