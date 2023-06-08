// ignore_for_file: body_might_complete_normally_nullable

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/createscreen/createscreen.dart';
import 'package:graduation_app/constants/colors.dart';

import 'package:graduation_app/constants/images.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/cubit/login/login_cubit.dart';

class LoginProcess extends StatefulWidget {
  const LoginProcess({super.key});

  @override
  State<LoginProcess> createState() => _LoginProcessState();
}

class _LoginProcessState extends State<LoginProcess> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess && state.loginModel.status!) {
          AnimatedSnackBar.rectangle(
            'Success',
            'This is a success snack bar',
            type: AnimatedSnackBarType.success,
            brightness: Brightness.light,
          ).show(
            context,
          );

          Navigator.pushReplacementNamed(context, routeHomeLayoutScreen);
        } else if (state is LoginError) {
          AnimatedSnackBar.rectangle(
            'Error',
            'Something went wrong. Please check your credentials and try again',
            type: AnimatedSnackBarType.error,
            brightness: Brightness.light,
          ).show(
            context,
          );
        }
      },
      builder: (context, state) {
        // LoginCubit cubit = LoginCubit.get(context);
        final cubit = context.read<LoginCubit>();

        return Form(
          key: cubit.formKeyLogin,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              defaultFormCreateScreen(
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(0, 16.h, 0, 16.h),
                width: ScreenUtil().setWidth(327),
                height: ScreenUtil().setHeight(56),
                prefix: Image.asset(ImageAsset.smsiconecreate),
                hintText: "email",
                hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: AppColor.textformfield,
                    letterSpacing: .3.w),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "email Must Not Be Empty";
                  }
                  return null;
                },
                onChanged: (email) {
                  cubit.onEmailChanged(email);
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              defaultFormCreateScreen(
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(0, 16.h, 0, 16.h),
                width: ScreenUtil().setWidth(327),
                height: ScreenUtil().setHeight(56),
                prefix: Image.asset(ImageAsset.lockiconecreate),
                obscureText: cubit.obscureText,
                suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        cubit.obscureText = !cubit.obscureText;
                      });
                    },
                    icon: Icon(cubit.obscureText
                        ? Icons.visibility_off
                        : Icons.visibility)),
                hintText: "Password",
                hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: AppColor.textformfield,
                    letterSpacing: .3.w),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Password Must Not Be Empty";
                  } else if (cubit.password.length < 8) {
                    return "Password must be at least 8 characters";
                  }
                },
                onChanged: (password) {
                  cubit.onPasswordChanged(password);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
