part of 'foods_cubit.dart';

sealed class FoodsState extends Equatable {
  const FoodsState();

  @override
  List<Object> get props => [];
}

final class FoodsInitial extends FoodsState {}
final class ChangeColor extends FoodsState {}
final class ChangeValue extends FoodsState {
  final int value;
  const ChangeValue({required this.value});
}
final class ChangeSwitchOne extends FoodsState {
  final bool value;
  const ChangeSwitchOne({required this.value});
}
