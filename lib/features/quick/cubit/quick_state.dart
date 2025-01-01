part of 'quick_cubit.dart';

@immutable
sealed class QuickState {}

final class QuickInitial extends QuickState {}
final class ChangeValue extends QuickState {}
final class SelectCard extends QuickState {
  final String value;
   SelectCard(this.value);
}
