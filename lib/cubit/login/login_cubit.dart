// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/data/models/login/login_model.dart';
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
        body: {"email": email, "password": password}).then((value) {
      if (value.statusCode == 200) {
        var json = jsonDecode(value.body);
        loginModel = LoginModel.fromJson(json);
        print(value.body);
        // print(LoginModel.);
        emit(LoginSuccess());
      } else {
        print("error");
        emit(LoginError());
      }
    }).catchError((error) {
      print(error.toString());
    });
  }
}
