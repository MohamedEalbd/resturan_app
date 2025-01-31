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

final class ProfileLoading extends ProfileState {}

final class ProfileSuccess extends ProfileState {
  final ProfileResponseModel  data;

  const ProfileSuccess({required this.data});
}

final class ProfileFailure extends ProfileState {}

final class UpdateProfileLoading extends ProfileState {}

final class UpdateProfileSuccess extends ProfileState {
  final ProfileResponseModel  data;

  const UpdateProfileSuccess({required this.data});
}

final class UpdateProfileFailure extends ProfileState {}
