import 'package:restaurant/build_injection.dart';
import 'package:restaurant/features/quick/cubit/quick_cubit.dart';

void quickInjection() {
  getIt.registerFactory<QuickCubit>(() => QuickCubit());
}
