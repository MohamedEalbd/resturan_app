import 'package:restaurant/build_injection.dart';
import 'package:restaurant/features/auth/presentation/cubit/auth_cubit.dart';

void authInJections() {
  //* cubit
  getIt.registerFactory<AuthCubit>(() => AuthCubit());
}
