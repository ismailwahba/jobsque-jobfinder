// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/createscreen/createscreen.dart';
import 'package:graduation_app/component/login/login_screen.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/cubit/register/register_cubit.dart';

class CreateButton extends StatefulWidget {
  const CreateButton({super.key});

  @override
  State<CreateButton> createState() => _CreateButtonState();
}

class _CreateButtonState extends State<CreateButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        final cubit = context.read<RegisterCubit>();

        return cubit.isRegisterButtonEnabeled()
            ? defaultButtonLoginScreenclicked(
                text: "Create Account",
                textStyle: TextStyle(
                    color: Colors.white, fontSize: 16.sp, letterSpacing: .1),
                onPressed: () {
                  cubit.userRegister(
                      email: cubit.email,
                      password: cubit.password,
                      name: cubit.name);
                  Navigator.pushReplacementNamed(context, routeLoginScreen);
                })
            : defaultButtonLoginScreenUnclicked(
                text: "Create Account",
                textStyle: TextStyle(
                    color: AppColor.grey, fontSize: 16.sp, letterSpacing: .1),
                onPressed: null);
      },
    );
  }
}
