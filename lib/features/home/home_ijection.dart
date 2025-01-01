import 'package:restaurant/build_injection.dart';
import 'package:restaurant/features/home/cubit/home_cubit.dart';

void homeInjection(){
  getIt.registerFactory<HomeCubit>(()=>HomeCubit());
}