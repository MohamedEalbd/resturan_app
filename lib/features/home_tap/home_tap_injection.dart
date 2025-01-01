import 'package:restaurant/build_injection.dart';
import 'package:restaurant/features/home_tap/cubit/home_tap_cubit.dart';

void homeTapInjection() {
  getIt.registerFactory<HomeTapCubit>(() => HomeTapCubit());
}
