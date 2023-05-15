// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/createscreen/createscreen.dart';
import 'package:graduation_app/component/onboarding/findgob_screen.dart';
import 'package:graduation_app/cubit/onboarding/onboarding_cubit.dart';

import '../../../constants/colors.dart';
import '../../../main.dart';

class CustomDotsControllerOnBoarding extends StatefulWidget {
  const CustomDotsControllerOnBoarding({super.key});

  @override
  State<CustomDotsControllerOnBoarding> createState() =>
      _CustomDotsControllerOnBoardingState();
}

class _CustomDotsControllerOnBoardingState
    extends State<CustomDotsControllerOnBoarding> {
  AnimatedContainer dotIndicator(i) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 900),
      width:
          OnboardingCubit.get(context).currentPageIndecator == i ? 25.w : 6.w,
      height: 6.h,
      margin: EdgeInsets.only(right: 5.w),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: OnboardingCubit.get(context).currentPageIndecator == i
              ? AppColor.primaryColor
              : AppColor.scprimaryColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(OnboardingCubit.get(context).contents.length,
            (index) => dotIndicator(index)),
      ],
    );
  }
}
