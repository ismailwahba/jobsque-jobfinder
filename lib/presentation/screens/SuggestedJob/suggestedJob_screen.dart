// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/app_components.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/constants/images.dart';

class SuggestJobScreen extends StatefulWidget {
  const SuggestJobScreen({super.key});

  @override
  State<SuggestJobScreen> createState() => _SuggestJobScreenState();
}

class _SuggestJobScreenState extends State<SuggestJobScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .18,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hi, Rafif Dian👋",
                            style: TextStyle(
                                fontSize: 24.sp,
                                // fontFamily: 'RasmusAndersson',
                                letterSpacing: .1,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          Text(
                            "Create a better future for yourself here",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColor.grey,

                                // fontFamily: 'RasmusAndersson',
                                letterSpacing: .01,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Container(
                        // alignment: Alignment.center,
                        width: ScreenUtil().setWidth(48),
                        height: ScreenUtil().setHeight(48),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: AppColor.borderColor, width: 1.w)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(ImageAsset.notification)),
                      )
                    ],
                  ),
                  Row(
                    children: [defaultSearchForm()],
                  ),
                  Row(
                    children: [
                      Text("Suggested Job",
                          style: TextStyle(
                              fontSize: 18.sp,
                              letterSpacing: .1,
                              color: HexColor("#111827"),fontWeight: FontWeight.w500))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )),
      // bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}
