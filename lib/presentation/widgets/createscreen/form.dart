// // ignore_for_file: body_might_complete_normally_nullable

// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/createscreen/createscreen.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/constants/images.dart';
import 'package:graduation_app/cubit/register/register_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateInformation extends StatefulWidget {
  const CreateInformation({super.key});

  @override
  State<CreateInformation> createState() => _CreateInformationState();
}

class _CreateInformationState extends State<CreateInformation> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        final cubit = context.read<RegisterCubit>();
        return Form(
          key: RegisterCubit.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              defaultFormCreateScreen(
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(0, 16.h, 0, 16.h),
                  width: ScreenUtil().setWidth(327),
                  height: ScreenUtil().setHeight(56),
                  prefix: Image.asset(ImageAsset.profileiconcreate),
                  hintText: "Username",
                  hintStyle: TextStyle(
                      fontSize: 14.sp,
                      color: AppColor.textformfield,
                      letterSpacing: .3.w),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "UserName Must Not Be Empty";
                    }
                    return null;
                  },
                  onChanged: (userName) {
                    cubit.onUserNameChanged(userName);
                  },
                  controller: RegisterCubit.usernameController),
              SizedBox(
                height: 10.0.h,
              ),
              defaultFormCreateScreen(
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(0, 16.h, 0, 16.h),
                  width: ScreenUtil().setWidth(327),
                  height: ScreenUtil().setHeight(56),
                  prefix: Image.asset(ImageAsset.smsiconecreate),
                  hintText: "Email",
                  hintStyle: TextStyle(
                      fontSize: 14.sp,
                      color: AppColor.textformfield,
                      letterSpacing: .3.w),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Email address Must Not Be Empty";
                    } else if (val.length < 8) {}
                    return null;
                  },
                  onChanged: (email) {
                    cubit.onEmailChanged(email);
                  },
                  controller: RegisterCubit.emailController),
              SizedBox(
                height: 10.0.h,
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
                        cubit.obscureText = !cubit.obscureText;
                      },
                      icon: Icon(RegisterCubit.get(context).obscureText
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
                    } else if (RegisterCubit.passwordController.text.length <
                        8) {
                      return "Password must be at least 8 characters";
                    }
                  },
                  onChanged: (password) {
                    cubit.onPasswordChanged(password);
                  },
                  controller: RegisterCubit.passwordController),
              SizedBox(
                height: 10.0.h,
              ),
              Row(
                children: [
                  Text("Password must be at least 8 characters",
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColor.textformfield,
                          letterSpacing: .50)),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
