part of 'settings_cubit.dart';

sealed class SettingsState extends Equatable {
  const SettingsState();

  @override
  List<Object> get props => [];
}

final class SettingsInitial extends SettingsState {}
final class ChangeColor extends SettingsState {}

final class SelectCheckBox extends SettingsState {
  final bool isChecked;

  const SelectCheckBox({required this.isChecked});
}
