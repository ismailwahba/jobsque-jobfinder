// ignore_for_file: must_be_immutable

part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  // LoginModel loginModel;
  // LoginSuccess(this.loginModel);
}

class LoginError extends LoginState {}
