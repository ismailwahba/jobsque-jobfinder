import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/createscreen/createscreen.dart';
import 'package:graduation_app/component/onboardingscreen/onboarding_screen.dart';

import '../../../constants/colors.dart';
import '../../../constants/hexa_color.dart';
import '../../../constants/images.dart';
import '../../../main.dart';

class CustomSliderOnBoarding extends StatefulWidget {
  const CustomSliderOnBoarding({super.key});

  @override
  State<CustomSliderOnBoarding> createState() => _CustomSliderOnBoardingState();
}

class _CustomSliderOnBoardingState extends State<CustomSliderOnBoarding> {
  @override
  // void initState() {
  //   pageController = PageController(initialPage: 0);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   pageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      onPageChanged: (val) {
        setState(() {
          currentPageIndecator = val;
        });
      },
      itemCount: contents.length,
      itemBuilder: (_, index) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    ImageAsset.logoImage,
                    width: ScreenUtil().setWidth(81),
                    height: ScreenUtil().setHeight(19),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: HexColor("#6B7280"),
                          letterSpacing: .01.w,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              child: Image.asset(
                "${contents[index].image}",
                width: MediaQuery.of(context).size.width,
                // width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(320),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Container(child: contents[index].title),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "${contents[index].discription}",
                    style: TextStyle(
                        color: AppColor.grey,
                        fontSize: 16.sp,
                        // letterSpacing: 1.0.w,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
