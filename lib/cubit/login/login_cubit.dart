// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/data/models/login/login_model.dart';
import 'package:graduation_app/utils/cach_helper.dart';
import 'package:graduation_app/utils/cach_keys.dart';
import 'package:meta/meta.dart';

import 'package:http/http.dart' as http;
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  var emailLoginController = TextEditingController();
  var passwordLoginController = TextEditingController();
  var formKeyLogin = GlobalKey<FormState>();
  LoginModel? loginModel;

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
        CacheHelper.saveData(key: "TOKEN", value: loginModel!.token);
        // print("Token ");
        print("Token : ${loginModel!.token}");
        // print(value.body);
        // print(loginModel!.token);
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
