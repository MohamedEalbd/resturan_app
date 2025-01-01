import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:restaurant/my_app.dart';

part 'wallet_state.dart';

class WalletCubit extends Cubit<WalletState> {
  WalletCubit() : super(WalletInitial());

  static final WalletCubit _walletCubit =BlocProvider.of(navigatorKey.currentContext!);
  static final WalletCubit instance =_walletCubit;

  List<String>? words = [
    "withdraw",
    "Card2",
    "Card3",
    "Card"
  ];
  String? value = 'withdraw';

  void selectCard(String value) {
    this.value = value;
    emit(SelectCard(this.value!));
    emit(ChangeValue());
  }
}
