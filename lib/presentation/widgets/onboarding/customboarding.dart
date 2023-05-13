import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/createscreen/createscreen.dart';
import 'package:graduation_app/component/onboardingscreen/onboarding_screen.dart';

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
          if (currentPageIndecator == contents.length - 1) {}
          pageController.nextPage(
            duration: const Duration(microseconds: 100),
            curve: Curves.bounceIn,
          );
        },
        child: Text(
          currentPageIndecator == contents.length - 1 ? "GetStarted" : "Next",
          style: TextStyle(
              color: Colors.white, fontSize: 16.0.sp, letterSpacing: 1),
        ),
      ),
    );
  }
}
