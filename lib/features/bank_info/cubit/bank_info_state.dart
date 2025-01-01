part of 'bank_info_cubit.dart';

sealed class BankInfoState extends Equatable {
  const BankInfoState();

  @override
  List<Object> get props => [];
}

final class BankInfoInitial extends BankInfoState {}
