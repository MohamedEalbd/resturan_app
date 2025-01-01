import 'package:get_it/get_it.dart';
import 'package:restaurant/features/chat/chat_injection.dart';
import 'package:restaurant/features/coupon/coupon_injection.dart';
import 'package:restaurant/features/foods/foods_injection.dart';
import 'package:restaurant/features/home_tap/home_tap_injection.dart';
import 'package:restaurant/features/lang/lang_injection.dart';
import 'package:restaurant/features/order_history/orders_inhection.dart';
import 'package:restaurant/features/profile/profile_injection.dart';
import 'package:restaurant/features/settings/settings_injection.dart';
import 'package:restaurant/shared/cubits/location_bloc/location_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/food_mangement/food_injection.dart';
import 'features/home/home_ijection.dart';
import 'features/quick/quick_injection.dart';
import 'features/splash/splash_injection.dart';
import 'features/wallet/wallet_injection.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  ///features

  initSplashInjection();
  homeTapInjection();
  homeInjection();
  foodInjection();
  foodsInJection();
  ordersInjection();
  walletInjection();
  quickInjection();
  profileInjection();
  settingsInjection();
  langInjection();
  chatInjection();
  couponInjection();

  getIt.registerFactory<LocationCubit>(() => LocationCubit());

  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);
}
