import 'package:restaurant/build_injection.dart';
import 'package:restaurant/features/wallet/cubit/wallet_cubit.dart';

void walletInjection(){
  getIt.registerFactory<WalletCubit>(()=>WalletCubit());
}