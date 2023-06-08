// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/login/login_screen.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/cubit/login/login_cubit.dart';
import 'package:graduation_app/utils/cach_helper.dart';

class InfoLoginProcess extends StatefulWidget {
  const InfoLoginProcess({super.key});

  @override
  State<InfoLoginProcess> createState() => _InfoLoginProcessState();
}

class _InfoLoginProcessState extends State<InfoLoginProcess> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        final cubit = context.read<LoginCubit>();
        return cubit.isLoginButtonEnabeled()
            ? defaultButtonLoginScreenclicked(
                text: "Login",
                textStyle: TextStyle(
                    color: Colors.white, fontSize: 16.sp, letterSpacing: .1),
                onPressed: () {
                  cubit.userLogin(email: cubit.email, password: cubit.password);
                  if (cubit.check == true) {
                    CacheHelper.saveData(key: "checked", value: true);
                  }
                })
            : defaultButtonLoginScreenUnclicked(
                text: "Login",
                textStyle: TextStyle(fontSize: 16.sp, letterSpacing: .1),
                onPressed: null);
      },
    );
  }
}
