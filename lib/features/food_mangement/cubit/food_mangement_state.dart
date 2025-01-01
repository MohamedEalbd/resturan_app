part of 'food_mangement_cubit.dart';

@immutable
sealed class FoodManagementState {}

final class FoodManagementInitial extends FoodManagementState {}
final class ChangeColor extends FoodManagementState {}
final class ChangeRadio extends FoodManagementState {
  final int value;
  ChangeRadio({required this.value});
}
