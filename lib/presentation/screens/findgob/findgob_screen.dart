// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_field, override_on_non_overriding_member, annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../components/component.dart';
import '../../../constants/colors.dart';
import '../../../constants/hexa_color.dart';
import '../../../constants/images.dart';
import '../../../constants/listonboarding.dart';
import '../../../models/indecatorContent_model.dart';
import '../getthebest/getthebest_screen.dart';
import '../hundredofgobs/hundredsjobs_screen.dart';

class FindGobScreen extends StatefulWidget {
  const FindGobScreen({super.key});

  @override
  State<FindGobScreen> createState() => _FindGobScreenState();
}

class _FindGobScreenState extends State<FindGobScreen> {
  final _controller = PageController();
  // late  ImageAsset imageAsset;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: HexColor("#FFFFFF"),
        body: Expanded(
          child: PageView.builder(
            itemCount: contents.length,
            itemBuilder: (_, index) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/Logo.png",
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
                          ]),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Image.asset(
                      "${contents[index].image}",
                      width: ScreenUtil().setWidth(375),
                      // height: ScreenUtil().setHeight(424),
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        children: [
                          SizedBox(child: contents[index].title),
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
                    Expanded(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            ...List.generate(
                                contents.length,
                                (index) => AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 900),
                                      width: 6.w,
                                      height: 6.h,
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                    )),
                          ],
                        ),
                        Container(
                          width: ScreenUtil().setWidth(327),
                          height: ScreenUtil().setHeight(48),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000.r),
                              color: HexColor("#3366FF")),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0.sp,
                                  letterSpacing: 1),
                            ),
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
