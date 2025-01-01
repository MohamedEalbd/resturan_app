import 'package:restaurant/build_injection.dart';
import 'package:restaurant/features/order_history/cubit/order_history_cubit.dart';

void ordersInjection(){
  getIt.registerFactory<OrderHistoryCubit>(()=>OrderHistoryCubit());
}