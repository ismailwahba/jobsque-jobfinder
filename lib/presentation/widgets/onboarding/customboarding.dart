// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:graduation_app/constants/string.dart';
// import 'package:graduation_app/cubit/cubit/onboarding_cubit.dart';
import 'package:graduation_app/cubit/onboarding/onboarding_cubit.dart';

import '../../../constants/colors.dart';
import '../../../main.dart';
// import '../../../main.dart';

class CustomButtonOnBoarding extends StatelessWidget {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(327),
      height: ScreenUtil().setHeight(48),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000.r),
          color: AppColor.primaryColor),
      child: MaterialButton(
        onPressed: () {
          if (OnboardingCubit.get(context).currentPageIndecator ==
              OnboardingCubit.get(context).contents.length - 1) {
            Navigator.pushNamed(context, routeCreateAccountScreen);
          }
          pageController.nextPage(
            duration: const Duration(microseconds: 100),
            curve: Curves.bounceIn,
          );
        },
        child: Text(
          OnboardingCubit.get(context).currentPageIndecator ==
                  OnboardingCubit.get(context).contents.length - 1
              ? "GetStarted"
              : "Next",
          style: TextStyle(
              color: Colors.white, fontSize: 16.0.sp, letterSpacing: 1),
        ),
      ),
    );
  }
}
