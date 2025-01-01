import 'package:restaurant/build_injection.dart';
import 'package:restaurant/features/foods/cubit/foods_cubit.dart';

void foodsInJection(){
  getIt.registerFactory<FoodsCubit>(()=>FoodsCubit());
}