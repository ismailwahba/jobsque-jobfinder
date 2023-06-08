part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  // RegisterSuccess(RegisterModel? registerModel);
  // RegisterSuccess(RegisterModel? registerModel);
}

class RegisterError extends RegisterState {}
class OnUserNameChanged extends RegisterState {}

class OnPasswordChanged extends RegisterState {}

class OnEmailChanged extends RegisterState {}

