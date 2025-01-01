part of 'profile_cubit.dart';

sealed class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

final class ProfileInitial extends ProfileState {}
final class ChangeColor extends ProfileState {}

final class ChangeSwitchOne extends ProfileState {
  final bool value;
  const ChangeSwitchOne({required this.value});
}
