import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/createscreen/createscreen.dart';
import 'package:graduation_app/component/onboardingscreen/onboarding_screen.dart';

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
      width: currentPageIndecator == i ? 25.w : 6.w,
      height: 6.h,
      margin: EdgeInsets.only(right: 5.w),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentPageIndecator == i
              ? AppColor.primaryColor
              : AppColor.scprimaryColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(contents.length, (index) => dotIndicator(index)),
      ],
    );
  }
}
