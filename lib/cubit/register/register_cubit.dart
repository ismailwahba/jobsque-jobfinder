// ignore_for_file: unused_local_variable, avoid_print

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/data/models/register/register_model.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:graduation_app/component/createscreen/createscreen.dart';
// import 'package:graduation_app/constants/colors.dart';
// import 'package:graduation_app/constants/controller.dart';
// import 'package:graduation_app/cubit/onboarding/onboarding_cubit.dart';
// import 'package:graduation_app/data/models/register/register_model.dart';
// import 'package:meta/meta.dart';

import 'package:http/http.dart' as http;
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  static RegisterCubit get(context) => BlocProvider.of(context);

  static var usernameController = TextEditingController();
  static var emailController = TextEditingController();
  static var passwordController = TextEditingController();
  static var formKey = GlobalKey<FormState>();

  // static bool isChanged = true;
  RegisterModel? registerModel;
  void userRegister(
      {required String name,
      required String email,
      required String password}) async {
    emit(RegisterLoading());

    return await http.post(Uri.parse(Register_Url), body: {
      "name": name,
      "email": email,
      "password": password
    }).then((value) {
      if (value.statusCode == 200) {
        var json = jsonDecode(value.body);
        registerModel = RegisterModel.fromJson(json);
        print(value.body);
        print(registerModel!.data!.name);
        emit(RegisterSuccess());
      } else {
        print("error");
        emit(RegisterError());
      }
    }).catchError((error) {
      print(error.toString());
    });
  }
}
