import 'package:restaurant/build_injection.dart';
import 'package:restaurant/features/lang/cubit/lang_cubit.dart';

void langInjection() {
  getIt.registerFactory<LangCubit>(() => LangCubit());
}
