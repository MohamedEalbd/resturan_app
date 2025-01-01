part of 'home_cubit.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}
final class ChangeColor extends HomeState {}
final class ChangeValue extends HomeState {
  final int index;

  const ChangeValue({required this.index});
}
