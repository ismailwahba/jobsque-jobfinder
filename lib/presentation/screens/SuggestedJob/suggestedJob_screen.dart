// ignore_for_file: file_names, unused_local_variable, prefer_const_constructors, unnecessary_string_escapes, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/app_components.dart';
import 'package:graduation_app/component/suggestedjob/suggestlobcomponents_screen.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/constants/images.dart';
import 'package:graduation_app/cubit/suggestedJob/suggested_job_cubit.dart';
import 'package:graduation_app/data/models/suggestjob/suggestjob_model.dart';
import 'package:json_annotation/json_annotation.dart';

class SuggestJobScreen extends StatefulWidget {
  const SuggestJobScreen({super.key});

  @override
  State<SuggestJobScreen> createState() => _SuggestJobScreenState();
}

class _SuggestJobScreenState extends State<SuggestJobScreen> {
  SuggestedModel? item;
  // HttpHandler httpHandler =HttpHandler();
  @override
  void initState() {
    SuggestedJobCubit.get(context).suggestedJob();

    super.initState();
  }

  void getAllSuggestedJobs() {
    SuggestedJobCubit.get(context).suggestedJob();
  }

  @override
  Widget build(BuildContext context) {
    SuggestedJobCubit cubit = SuggestedJobCubit.get(context);

    return BlocProvider(
        create: (context) => SuggestedJobCubit(),
        child: BlocConsumer<SuggestedJobCubit, SuggestedJobState>(
            listener: (context, state) {
          // TODO: implement listener
        }, builder: (context, state) {
          return Scaffold(
              body: SafeArea(
                  child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: SingleChildScrollView(
              // physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
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
                                  height:
                                      MediaQuery.of(context).size.height * .01,
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
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Suggested Job",
                          style: TextStyle(
                              fontSize: 18.sp,
                              letterSpacing: .1,
                              color: HexColor("#111827"),
                              fontWeight: FontWeight.w500)),
                      TextButton(
                        onPressed: () {
                          // SuggestedJobCubit.get(context).getSuggestedJobs();
                        },
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 14.sp,
                            // color: Colors.white70,
                            fontWeight: FontWeight.w400,
                            // decoration: TextDecoration.underline,
                            // decorationThickness: 2,
                            // decorationColor: Colors.blue
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * .26,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: 20.w,
                      ),
                      shrinkWrap: true,
                      // physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        width: ScreenUtil().setWidth(300),
                        height: ScreenUtil().setHeight(183),
                        decoration: BoxDecoration(
                            color: HexColor("#091A7A"),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(ImageAsset.archive),
                                Column(
                                  children: [
                                    Text(
                                      "item",
                                      style: TextStyle(fontSize: 18.sp),
                                    ),
                                    Text(
                                      "bla",
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                                Image.asset(ImageAsset.archive)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: ScreenUtil().setWidth(87),
                                    height: ScreenUtil().setHeight(30),
                                    decoration: BoxDecoration(
                                        color: AppColor.grey.withOpacity(.3),
                                        borderRadius:
                                            BorderRadius.circular(100.r)),
                                    child: Text(
                                      "Fulltime",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400),
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: ScreenUtil().setWidth(87),
                                    height: ScreenUtil().setHeight(30),
                                    decoration: BoxDecoration(
                                        color: AppColor.grey.withOpacity(.3),
                                        borderRadius:
                                            BorderRadius.circular(100.r)),
                                    child: Text(
                                      "Fulltime",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400),
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: ScreenUtil().setWidth(87),
                                    height: ScreenUtil().setHeight(30),
                                    decoration: BoxDecoration(
                                        color: AppColor.grey.withOpacity(.3),
                                        borderRadius:
                                            BorderRadius.circular(100.r)),
                                    child: Text(
                                      "Fulltime",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400),
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\K-15K/Month"),
                                Container(
                                    width: ScreenUtil().setWidth(96),
                                    height: ScreenUtil().setHeight(32),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(1000.r),
                                        color: HexColor("#3366FF")),
                                    child: MaterialButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Apply now",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recent Job",
                          style: TextStyle(
                              fontSize: 18.sp,
                              letterSpacing: .1,
                              color: HexColor("#111827"),
                              fontWeight: FontWeight.w500)),
                      TextButton(
                        onPressed: () {
                          // SuggestedJobCubit.get(context).getSuggestedJobs();
                        },
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 14.sp,
                            // color: Colors.white70,
                            fontWeight: FontWeight.w400,
                            // decoration: TextDecoration.underline,
                            // decorationThickness: 2,
                            // decorationColor: Colors.blue
                          ),
                        ),
                      )
                    ],
                  ),
                  // RecentJobGroup(),

                  // )
                  // const ItemSuggestJob()
                ],
              ),
            ),
          )));
        }));

    // bottomNavigationBar: BottomNavigationBar(items: items),
  }
}
