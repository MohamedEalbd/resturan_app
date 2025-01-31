part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

//* sign up
final class SignUpLoading extends AuthState {}

final class SignUpSuccess extends AuthState {
  final SignUpModel signUpModel;
  SignUpSuccess(this.signUpModel);
}

final class SignUpFailure extends AuthState {
  final ErrorSignUpModel errorMessage;
  SignUpFailure(this.errorMessage);
}

// sign in
final class SignInLoading extends AuthState {}

final class SignInSuccess extends AuthState {
  final SignInModel message;
  SignInSuccess(this.message);
}

final class SignInFailure extends AuthState {
  final ErrorSignUpModel errorMessage;
  SignInFailure(this.errorMessage);
}
