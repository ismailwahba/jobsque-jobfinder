// ignore_for_file: avoid_print, unused_field, avoid_web_libraries_in_flutter

import 'dart:convert';
// import 'dart:js';

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
// import 'package:top_snackbar_flutter/custom_snack_bar.dart';
// import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/data/models/login/login_model.dart';
import 'package:graduation_app/utils/cach_helper.dart';
import 'package:graduation_app/utils/cach_keys.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  BuildContext? get context => null;
  static LoginCubit get(context) => BlocProvider.of(context);
  var emailLoginController = TextEditingController();
  var passwordLoginController = TextEditingController();
  var formKeyLogin = GlobalKey<FormState>();
  LoginModel? loginModel;
  bool obscureText = true;
  bool check = false;
  // bool val = false;
  String _email = '', _password = "";
  String get password => _password;
  String get email => _email;

  void onEmailChanged(String email) {
    _email = email;
    emit(OnEmailChanged());
  }

  void onPasswordChanged(String password) {
    _password = password;
    emit(OnPasswordChanged());
  }

  bool isLoginButtonEnabeled() {
    return _isPasswordValid() && _email.isNotEmpty;
  }

  bool _isPasswordValid() {
    return _password.isNotEmpty && _password.length >= 8;
  }

  // void messageSuccessfulLogin() {
  //   AnimatedSnackBar.rectangle(
  //     'Success',
  //     'This is a success snack bar',
  //     type: AnimatedSnackBarType.success,
  //     brightness: Brightness.light,
  //   ).show(
  //     context!,
  //   );
  //   emit(MessageSuccessfulLoginState());
  // }

  // void messageFailedLogin() {
  //   AnimatedSnackBar.rectangle(
  //     'Error',
  //     'This is an error snack bar',
  //     type: AnimatedSnackBarType.error,
  //     brightness: Brightness.light,
  //   ).show(
  //     context!,
  //   );
  //   emit(MessageFailedLoginState());
  // }

  void userLogin({required String email, required String password}) async {
    emit(LoginLoading());

    return await http.post(Uri.parse(Login_Url),
        body: {"email": email, "password": password}).then((value) async {
      if (value.statusCode == 200) {
        await CacheHelper.saveData(key: CacheKeys.email.name, value: email);
        await CacheHelper.saveData(
            key: CacheKeys.password.name, value: password);
        await CacheHelper.saveData(key: CacheKeys.isLogin.name, value: true);
        var json = jsonDecode(value.body);
        loginModel = LoginModel.fromJson(json);
        CacheHelper.saveData(key: CachKeys.token, value: loginModel!.token);

        emit(LoginSuccess(loginModel!));
      } else {
        print("error");
        emit(LoginError());
      }
    }).catchError((error) {
      print(error.toString());
      emit(LoginError());
    });
  }
}
