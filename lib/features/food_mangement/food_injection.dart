import 'package:restaurant/build_injection.dart';
import 'package:restaurant/features/food_mangement/cubit/food_mangement_cubit.dart';

void foodInjection(){
  getIt.registerFactory<FoodManagementCubit>(()=>FoodManagementCubit());
}