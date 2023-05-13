// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_field, override_on_non_overriding_member, annotate_overrides

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/presentation/widgets/onboarding/customboarding.dart';
import 'package:graduation_app/presentation/widgets/onboarding/customslider.dart';
import 'package:graduation_app/presentation/widgets/onboarding/dotcontroller.dart';

// import '../../../constants/colors.dart';
import '../../../constants/images.dart';
import '../../../main.dart';

class FindGobScreen extends StatefulWidget {
  const FindGobScreen({super.key});

  @override
  State<FindGobScreen> createState() => _FindGobScreenState();
}

class _FindGobScreenState extends State<FindGobScreen> {
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
    return Scaffold(
      body: SafeArea(
          child: Container(
                margin: EdgeInsets.symmetric(vertical: 5.h),
                child: Column(
                        children: [
                          Expanded(
                            child: const CustomSliderOnBoarding(),
                          ),
                          Column(
                            children: [
                const CustomDotsControllerOnBoarding(),
                SizedBox(
                  height: 20.h,
                ),
                const CustomButtonOnBoarding(),
                SizedBox(
                  height: 20.h,
                ),
                Image.asset(
                  ImageAsset.homeIndicatorImage,
                ),
                            ],
                          )
                        ],
                ),
              )),
    );
  }
}















