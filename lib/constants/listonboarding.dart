import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/indecatorContent_model.dart';
import 'hexa_color.dart';
import 'images.dart';

List<OnboardingContent> contents = [
    OnboardingContent(
        image: ImageAsset.onBoardingImageOne,
        title: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "Find a job , and ",
                style: TextStyle(
                    color: HexColor("#111827"),
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500)),
            TextSpan(
                text: "start\nbuilding ",
                style: TextStyle(
                    color: HexColor("#3366FF"),
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500)),
            TextSpan(
                text: "your career from now on",
                style: TextStyle(
                  color: HexColor("#111827"),
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w500,
                  // height: 1.3.h
                )),
          ]),
        ),
        discription:
            "Explore over 25,924 available job roles and upgrade your operator now."),
    OnboardingContent(
        image: ImageAsset.onBoardingImageTwo,
        title: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "Hundreds of jobs are\nwaiting for you to ",
                style: TextStyle(
                    color: HexColor("#111827"),
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500)),
            TextSpan(
                text: "join together ",
                style: TextStyle(
                    color: HexColor("#3366FF"),
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500)),
          ]),
        ),
        discription:
            "Immediately join us and start applying for the job you are interested in."),
    OnboardingContent(
        image: ImageAsset.onBoardingImageThree,
        title: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "Get the best ",
                style: TextStyle(
                    color: HexColor("#111827"),
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w500)),
            TextSpan(
                text: "choice for\nthe job ",
                style: TextStyle(
                    color: HexColor("#3366FF"),
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w500)),
            TextSpan(
                text: "you've always dreamed of",
                style: TextStyle(
                  color: HexColor("#111827"),
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                  // height: 1.3.h
                )),
          ]),
        ),
        discription:
            "The better the skills you have, the greater the good job opportunities for you."),
  ];