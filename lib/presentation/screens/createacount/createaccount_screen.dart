// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable, unused_field, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/app_components.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/constants/icons.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/cubit/register/register_cubit.dart';
import 'package:graduation_app/presentation/screens/login/login_screen.dart';
import 'package:graduation_app/presentation/widgets/createscreen/customsocialbutton.dart';
import 'package:graduation_app/presentation/widgets/createscreen/form.dart';
import 'package:graduation_app/presentation/widgets/createscreen/homeindecator.dart';
import 'package:graduation_app/presentation/widgets/createscreen/signupinformation.dart';

import '../../../component/createscreen/createscreen.dart';
import '../../../constants/colors.dart';

import '../../../constants/images.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  // var usernameController = TextEditingController();
  // var emailController = TextEditingController();
  // var passwordController = TextEditingController();
  bool _obscureText = true;

  // String bla ="dfsdfsdfsdfsdfsdfsdf";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .62,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ArrowBackIcon(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, routeOnboardingScreen);
                                  },
                                ),
                                Image.asset(
                                  ImageAsset.logoImage,
                                  width: ScreenUtil().setWidth(81),
                                  height: ScreenUtil().setHeight(19),
                                )
                              ],
                            ),
                            Form(
                              key: RegisterCubit.formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cereate Account",
                                    style: TextStyle(
                                        fontSize: 27.sp,
                                        letterSpacing: 1.0.w,
                                        // fontFamily: 'Flu',
                                        color: HexColor('#111827'),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 7.h,
                                  ),
                                  Text(
                                    "Please create an account to find your dream job",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      // letterSpacing: 1.0.w,
                                      // fontFamily: 'Flu',
                                      color: AppColor.grey,
                                      // fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  defaultFormCreateScreen(
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 16.h, 0, 16.h),
                                      width: ScreenUtil().setWidth(327),
                                      height: ScreenUtil().setHeight(56),
                                      prefix: Image.asset(
                                          ImageAsset.profileiconcreate),
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
                                      controller:
                                          RegisterCubit.usernameController),
                                  SizedBox(
                                    height: 10.0.h,
                                  ),
                                  defaultFormCreateScreen(
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 16.h, 0, 16.h),
                                      width: ScreenUtil().setWidth(327),
                                      height: ScreenUtil().setHeight(56),
                                      prefix: Image.asset(
                                          ImageAsset.smsiconecreate),
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
                                      controller:
                                          RegisterCubit.emailController),
                                  SizedBox(
                                    height: 10.0.h,
                                  ),
                                  defaultFormCreateScreen(
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 16.h, 0, 16.h),
                                      width: ScreenUtil().setWidth(327),
                                      height: ScreenUtil().setHeight(56),
                                      prefix: Image.asset(
                                          ImageAsset.lockiconecreate),
                                      obscureText: _obscureText,
                                      suffix: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _obscureText = !_obscureText;
                                            });
                                          },
                                          icon: Icon(_obscureText
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
                                        } else if (RegisterCubit
                                                .passwordController
                                                .text
                                                .length <
                                            8) {
                                          return "Password must be at least 8 characters";
                                        }
                                      },
                                      controller:
                                          RegisterCubit.passwordController),
                                  SizedBox(
                                    height: 10.0.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                          "Password must be at least 8 characters",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: AppColor.textformfield,
                                              letterSpacing: .50)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .31,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Already have an account?",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: AppColor.textformfield,
                                        // letterSpacing: 1
                                      )),
                                  TextButton(
                                      onPressed: () { Navigator.pushNamed(context,
                                                routeLoginScreen);},
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: HexColor("#3366FF")
                                            // fontWeight: FontWeight.w500,
                                            ),
                                      ))
                                ],
                              ),
                              defaultButtonCreateScreen(
                                color: RegisterCubit.usernameController.text
                                            .isNotEmpty &&
                                        RegisterCubit
                                            .emailController.text.isNotEmpty &&
                                        RegisterCubit
                                            .passwordController.text.isNotEmpty
                                    ? AppColor.primaryColor
                                    : AppColor.borderColor,
                                onPressed: () {
                                  if (RegisterCubit.formKey.currentState!
                                      .validate()) {
                                    Navigator.pushNamed(
                                        context, routeLoginScreen);
                                  }

                                  RegisterCubit.get(context).userRegister(
                                      name:
                                          RegisterCubit.usernameController.text,
                                      email: RegisterCubit.emailController.text,
                                      password: RegisterCubit
                                          .passwordController.text);
                                },
                              ),
                              // RegisterCubit.get(context).changeButton(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: ScreenUtil().setWidth(64.5),
                                      height: ScreenUtil().setHeight(2),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: AppColor.borderColor),
                                      )),
                                  TextButton(
                                    child: Text(
                                      "Or Sign up With Account",
                                      style: TextStyle(
                                          color: HexColor("#6B7280"),
                                          fontSize: 14.sp,
                                          letterSpacing: .50.w),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                      width: ScreenUtil().setWidth(64.5),
                                      height: ScreenUtil().setHeight(2),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: AppColor.borderColor),
                                      )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  DefaultSocialButtons(
                                      url: ImageAsset.google, text: "Google"),
                                  DefaultSocialButtons(
                                    url: ImageAsset.facebook,
                                    text: "Facebook",
                                  ),
                                ],
                              ),
                            ],
                          )),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .01,
                          child: HomeIndecator()),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
