// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/app_components.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/constants/icons.dart';
import 'package:graduation_app/constants/images.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/presentation/widgets/createscreen/homeindecator.dart';

class SetUpScreen extends StatefulWidget {
  const SetUpScreen({super.key});

  @override
  State<SetUpScreen> createState() => _SetUpScreenState();
}

class _SetUpScreenState extends State<SetUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 5.h),
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //   image: AssetImage(),
        //   // fit: BoxFit.cover,
        //   // alignment: Alignment.center,
        // )),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 24.w,
                  onPressed: () {
                    Navigator.pushNamed(context, routeLocationScreen);
                  },
                  icon: Icon(AppIcons.arrowback),
                  color: AppColor.arrowicon,
                ),
              ],
            ),
            Column(
              // crossAxisAlignment: Cr,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  ImageAsset.accountIlustration,
                  fit: BoxFit.fitWidth,
                  width: ScreenUtil().setWidth(173),
                  // height: ScreenUtil().setHeight(142),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text("Your account has been set up!",
                    style: TextStyle(
                        fontSize: 24.sp,
                        letterSpacing: .1,
                        color: HexColor("#111827"),
                        fontWeight: FontWeight.w500)),
                Text("We have customized feeds according to your\npreferences",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14.sp,
                        letterSpacing: .1,
                        height: 1.3.h,
                        color: AppColor.grey,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            // Column(
            //   children: [],
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultButtonScreens(
                  color: AppColor.primaryColor,
                  text: "Get Started",
                  textStyle: TextStyle(),
                  onPressed: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                HomeIndecator(),
              ],
            )
          ],
        ),
      )),
    );
  }
}
