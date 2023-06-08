// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_field, override_on_non_overriding_member, annotate_overrides, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'dart:js';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/cubit/onboarding/onboarding_cubit.dart';
import 'package:graduation_app/presentation/widgets/onboarding/customboarding.dart';
import 'package:graduation_app/presentation/widgets/onboarding/customslider.dart';
import 'package:graduation_app/presentation/widgets/onboarding/dotcontroller.dart';

// import '../../../constants/colors.dart';
import '../../../constants/images.dart';
import '../../../main.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // final _controller = PageController();

  // late  ImageAsset imageAsset;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  // @override
  // void dispose() {
  //   pageController.dispose();
  //   super.dispose();
  // }

  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
              child: Container(
            margin: EdgeInsets.symmetric(vertical: 5.h),
            child: Column(
              children: [
                Expanded(
                  child: const CustomSliderOnBoarding(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .13,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomDotsControllerOnBoarding(),
                      const CustomButtonOnBoarding(),
                      Image.asset(
                        ImageAsset.homeIndicatorImage,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        );
      },
    );
  }
}
