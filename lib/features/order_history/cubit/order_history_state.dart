part of 'order_history_cubit.dart';

sealed class OrderHistoryState extends Equatable {
  const OrderHistoryState();

  @override
  List<Object> get props => [];
}

final class OrderHistoryInitial extends OrderHistoryState {}
final class ChangeColor extends OrderHistoryState {}

final class SelectWord extends OrderHistoryState {
  final int currentIndex;

  const SelectWord({required this.currentIndex});
}
