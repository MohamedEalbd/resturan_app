part of 'wallet_cubit.dart';

@immutable
sealed class WalletState {}

final class WalletInitial extends WalletState {}
final class ChangeValue extends WalletState {}
final class SelectCard extends WalletState {
  final String value;
   SelectCard(this.value);
}
