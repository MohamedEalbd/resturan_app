import 'package:restaurant/build_injection.dart';
import 'package:restaurant/features/coupon/cubit/coupon_cubit.dart';

void couponInjection(){
  getIt.registerFactory<CouponCubit>(()=>CouponCubit());
}