// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable, unused_field, avoid_print, unused_local_variable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/app_components.dart';
import 'package:graduation_app/component/login/login_screen.dart';
import 'package:graduation_app/constants/hexa_color.dart';

import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/cubit/login/login_cubit.dart';
import 'package:graduation_app/cubit/login/login_cubit.dart';
import 'package:graduation_app/cubit/login/login_cubit.dart';

import 'package:graduation_app/data/models/login/login_model.dart';
import 'package:graduation_app/presentation/screens/SuggestedJob/suggestedJob_screen.dart';
import 'package:graduation_app/presentation/widgets/createscreen/homeindecator.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

// import 'package:graduation_app/cubit/login/login_cubit.dart';

import '../../../component/createscreen/createscreen.dart';
import '../../../constants/colors.dart';

import '../../../constants/images.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'login_screen.dart';

// late LoginModel loginMod;
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  bool check = false;
  late AnimationController localAnimationController;

  // String bla ="dfsdfsdfsdfsdfsdfsdf";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            showTopSnackBar(
              Overlay.of(context),
              CustomSnackBar.success(
                message:
                    "Good job, your release is successful. Have a nice day",
              ),
            );

            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => SuggestJobScreen()));
          } else {
            showTopSnackBar(
              Overlay.of(context),
              CustomSnackBar.error(
                message:
                    "Something went wrong. Please check your credentials and try again",
              ),
            );
          }
        },
        builder: (context, state) {
          LoginCubit cubit = LoginCubit.get(context);

          return Scaffold(
            body: SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .03,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              ImageAsset.logoImage,
                              width: ScreenUtil().setWidth(81),
                              height: ScreenUtil().setHeight(19),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .57,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 28.sp,
                                      letterSpacing: 0.1.w,
                                      // fontFamily: 'Flu',
                                      color: HexColor('#111827'),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Text(
                                  "Please login to find your dream job",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    letterSpacing: .1.w,
                                    fontWeight: FontWeight.w400,
                                    // fontFamily: 'Flu',
                                    color: AppColor.grey,
                                    // fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .03,
                            ),
                            Form(
                              key: cubit.formKeyLogin,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  defaultFormCreateScreen(
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            0, 16.h, 0, 16.h),
                                    width: ScreenUtil().setWidth(327),
                                    height: ScreenUtil().setHeight(56),
                                    prefix:
                                        Image.asset(ImageAsset.smsiconecreate),
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
                                    controller: cubit.emailLoginController,
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .02,
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
                                        } else if (cubit.passwordLoginController
                                                .text.length <
                                            8) {
                                          return "Password must be at least 8 characters";
                                        }
                                      },
                                      controller:
                                          cubit.passwordLoginController),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Checkbox(
                                            // splashRadius: 1.5,
                                            // splashRadius: 20.5,
                                            // checkColor: Colors.red,

                                            value: check,
                                            onChanged: (val) {
                                              setState(() {
                                                check = val!;
                                              });
                                            },
                                          ),
                                          Text(
                                            "Remember me",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: HexColor("#1F2937"),
                                                letterSpacing: .1,
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Forget Password?",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            // color: Colors.white70,
                                            fontWeight: FontWeight.w400,
                                            // decoration: TextDecoration.underline,
                                            // decorationThickness: 2,
                                            // decorationColor: Colors.blue
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .34,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Dont have an account?",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: AppColor.textformfield,
                                            // letterSpacing: 1
                                          )),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context,
                                                routeCreateAccountScreen);
                                          },
                                          child: Text(
                                            "Register",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: HexColor("#3366FF")
                                                // fontWeight: FontWeight.w500,
                                                ),
                                          ))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Column(
                                        children: [
                                          cubit.emailLoginController.text
                                                      .isNotEmpty &&
                                                  cubit.passwordLoginController
                                                      .text.isNotEmpty &&
                                                  cubit.passwordLoginController
                                                          .text.length >=
                                                      8
                                              ? defaultButtonLoginScreenclicked(
                                                  textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16.sp,
                                                      letterSpacing: .1),
                                                  onPressed: () {
                                                    cubit.userLogin(
                                                        email: cubit
                                                            .emailLoginController
                                                            .text,
                                                        password: cubit
                                                            .passwordLoginController
                                                            .text);
                                                  })
                                              : defaultButtonLoginScreenUnclicked(
                                                  textStyle: TextStyle(
                                                      color: AppColor.grey,
                                                      fontSize: 16.sp,
                                                      letterSpacing: .1),
                                                  onPressed: null),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                  width: ScreenUtil()
                                                      .setWidth(70.5),
                                                  height:
                                                      ScreenUtil().setHeight(2),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: AppColor
                                                            .borderColor),
                                                  )),
                                              TextButton(
                                                child: Text(
                                                  "Or Login With Account",
                                                  style: TextStyle(
                                                      color:
                                                          HexColor("#6B7280"),
                                                      fontSize: 14.sp,
                                                      letterSpacing: .50.w),
                                                ),
                                                onPressed: () {},
                                              ),
                                              SizedBox(
                                                  width: ScreenUtil()
                                                      .setWidth(70.5),
                                                  height:
                                                      ScreenUtil().setHeight(2),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: AppColor
                                                            .borderColor),
                                                  )),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              DefaultSocialButtons(
                                                  url: ImageAsset.google,
                                                  text: "Google"),
                                              DefaultSocialButtons(
                                                url: ImageAsset.facebook,
                                                text: "Facebook",
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              HomeIndecator()
                            ],
                          )),
                      // SizedBox(
                      //     height: MediaQuery.of(context).size.height * .02,
                      //     child:
                      //     ),
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
