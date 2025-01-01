import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bank_info_state.dart';

class BankInfoCubit extends Cubit<BankInfoState> {
  BankInfoCubit() : super(BankInfoInitial());
}
