import 'package:restaurant/build_injection.dart';
import 'package:restaurant/features/profile/cubit/profile_cubit.dart';

void profileInjection(){
  getIt.registerFactory<ProfileCubit>(()=>ProfileCubit());
}