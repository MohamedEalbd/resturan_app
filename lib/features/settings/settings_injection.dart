import 'package:restaurant/build_injection.dart';
import 'package:restaurant/features/settings/cubit/settings_cubit.dart';

void settingsInjection(){
  getIt.registerFactory<SettingsCubit>(()=>SettingsCubit());
}