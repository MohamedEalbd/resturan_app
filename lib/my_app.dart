import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/build_injection.dart';
import 'package:restaurant/core/routes/routes_generator.dart';
import 'package:restaurant/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:restaurant/features/chat/cubit/chat_cubit.dart';
import 'package:restaurant/features/coupon/cubit/coupon_cubit.dart';
import 'package:restaurant/features/food_mangement/cubit/food_mangement_cubit.dart';
import 'package:restaurant/features/foods/cubit/foods_cubit.dart';
import 'package:restaurant/features/home/cubit/home_cubit.dart';
import 'package:restaurant/features/home_tap/cubit/home_tap_cubit.dart';
import 'package:restaurant/features/lang/cubit/lang_cubit.dart';
import 'package:restaurant/features/order_history/cubit/order_history_cubit.dart';
import 'package:restaurant/features/profile/cubit/profile_cubit.dart';
import 'package:restaurant/features/quick/cubit/quick_cubit.dart';
import 'package:restaurant/features/settings/cubit/settings_cubit.dart';
import 'package:restaurant/features/splash/cubit/theme_cubit.dart';
import 'package:restaurant/features/splash/screen/splash_screen.dart';
import 'package:restaurant/shared/cubits/location_bloc/location_cubit.dart';

import 'features/wallet/cubit/wallet_cubit.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<HomeTapCubit>(
                create: (context) => getIt<HomeTapCubit>()),
            BlocProvider<HomeCubit>(create: (context) => getIt<HomeCubit>()),
            BlocProvider<LocationCubit>(
                create: (context) => getIt<LocationCubit>()),
            BlocProvider<ThemeCubit>(create: (context) => getIt<ThemeCubit>()),
            BlocProvider<FoodManagementCubit>(
                create: (context) => getIt<FoodManagementCubit>()),
            BlocProvider<FoodsCubit>(create: (context) => getIt<FoodsCubit>()),
            BlocProvider<OrderHistoryCubit>(
                create: (context) => getIt<OrderHistoryCubit>()),
            BlocProvider<WalletCubit>(
                create: (context) => getIt<WalletCubit>()),
            BlocProvider<QuickCubit>(create: (context) => getIt<QuickCubit>()),
            BlocProvider<ProfileCubit>(
                create: (context) => getIt<ProfileCubit>()),
            BlocProvider<SettingsCubit>(
                create: (context) => getIt<SettingsCubit>()),
            BlocProvider<LangCubit>(create: (context) => getIt<LangCubit>()),
            BlocProvider<ChatCubit>(create: (context) => getIt<ChatCubit>()),
            BlocProvider<CouponCubit>(
                create: (context) => getIt<CouponCubit>()),
            BlocProvider<AuthCubit>(create: (context) => getIt<AuthCubit>()),
          ],
          child: MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            navigatorKey: navigatorKey,
            onGenerateRoute: RoutesGenerator.onGenerateRoute,
            home: child,
          ),
        );
      },
      child: SplashScreen(),
    );
  }
}
