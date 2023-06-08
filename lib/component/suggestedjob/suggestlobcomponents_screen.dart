// // import 'dart:js';

// // ignore_for_file: prefer_const_constructors

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/constants/images.dart';
import 'package:graduation_app/cubit/suggestedJob/suggested_job_cubit.dart';
import 'package:graduation_app/data/models/suggestjob/suggestjob_model.dart';

class SuggestedJobItem extends StatelessWidget {
  SuggestedJobItem(
      {super.key,
      required this.width,
      required this.height,
      required this.text});
  double? width;
  double? height;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      // padding: EdgeInsetsDirectional.fromSTEB(
      //     6.w, 9.h, 6.w, 10.h),
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: HexColor("#FFFFFF").withOpacity(.14),
          borderRadius: BorderRadius.circular(100.r),
          border: Border.all(color: HexColor("#24FFFFFF"), width: .5.w)),
      child: MaterialButton(
        // padding: EdgeInsetsDirectional.fromSTEB(
        // 4.w, 15.h, 4.w, 15.h),
        // height: ScreenUtil().setHeight(30),
        // minWidth: ScreenUtil().setWidth(82),

        // style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        onPressed: () {},
        child: Text(
          text!,
          style: TextStyle(
              color: HexColor("#FFFFFF"),
              fontSize: 12.sp,
              fontWeight: FontWeight.w400),
          // textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class SuggestedJobgroup extends StatefulWidget {
  const SuggestedJobgroup({super.key});

  @override
  State<SuggestedJobgroup> createState() => _SuggestedJobgroupState();
}

class _SuggestedJobgroupState extends State<SuggestedJobgroup> {
  SuggestedModel? item;
  bool selectedIndex = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              onPressed: () {},
              child: Text(
                "View all",
                style: TextStyle(
                  fontSize: 14.sp,
                  // color: Colors.white70,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
        BlocBuilder<SuggestedJobCubit, SuggestedJobState>(
          builder: (context, state) {
            SuggestedJobCubit cubit = SuggestedJobCubit.get(context)
              ..suggestedJob();

            return SizedBox(
                height: MediaQuery.of(context).size.height * .30,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.w,
                  ),
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: cubit.jobs.length,

                  itemBuilder: (context, index) => Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
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
                            Image.asset(
                              ImageAsset.zoomLogo,
                              // width: 50.w,
                              // height: 50.h,
                            ),
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "${cubit.jobs[index].name}",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: HexColor("#FFFFFF"),
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .1),
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Text(
                                  "${cubit.jobs[index].jobType}",
                                  // maxLines: 3,
                                  // overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColor.textformfield,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: .1,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(ImageAsset.archive))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SuggestedJobItem(
                              text: "Fulltime",
                              width: ScreenUtil().setWidth(87),
                              height: ScreenUtil().setHeight(35),
                            ),
                            SuggestedJobItem(
                              text: "Remote",
                              width: ScreenUtil().setWidth(86),
                              height: ScreenUtil().setHeight(35),
                            ),
                            SuggestedJobItem(
                              text: "Design",
                              width: ScreenUtil().setWidth(82),
                              height: ScreenUtil().setHeight(35),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "\$${cubit.jobs[index].salary}",
                                  style: TextStyle(
                                      color: HexColor("#FFFFFF"),
                                      fontSize: 20.sp,
                                      letterSpacing: .1,
                                      fontWeight: FontWeight.w500)),
                              TextSpan(
                                  text: "/Month",
                                  style: TextStyle(
                                      color:
                                          HexColor("#FFFFFF").withOpacity(0.3),
                                      fontSize: 12.sp,
                                      letterSpacing: .1,
                                      fontWeight: FontWeight.w500)),
                            ])),
                            Container(
                                width: ScreenUtil().setWidth(96),
                                height: ScreenUtil().setHeight(40),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1000.r),
                                    color: HexColor("#3366FF")),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Apply now",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        letterSpacing: .1,
                                        color: HexColor("#FFFFFF"),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ));
          },
        ),
      ],
    );
  }
}

class RecentJobItem extends StatelessWidget {
  RecentJobItem(
      {super.key,
      required this.width,
      required this.height,
      required this.text});
  double? width;
  double? height;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: HexColor("#D6E4FF"),
          borderRadius: BorderRadius.circular(100.r)),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          text!,
          style: TextStyle(
              color: HexColor("#3366FF"),
              fontSize: 13.sp,
              letterSpacing: .1,
              fontWeight: FontWeight.w400),
          // textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class RecentJobGroup extends StatelessWidget {
  const RecentJobGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuggestedJobCubit, SuggestedJobState>(
      builder: (context, state) {
        return Column(
          children: [
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
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 14.sp,
                      // color: Colors.white70,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              // height: MediaQuery.of(context).size.height * .3,
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) => Container(
                  height: 1.h,
                  // width: 1.w,
                  color: AppColor.borderColor,
                ),
                itemCount: 6,
                itemBuilder: (context, index) => SizedBox(
                  height: MediaQuery.of(context).size.height * .18,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(ImageAsset.twitterLogo),
                          Column(children: [
                            Text(
                              "Senior UI Designer",
                              style: TextStyle(
                                color: HexColor("#111827"),
                                fontSize: 18.sp,
                              ),
                            ),
                            Text(
                              "Twitter • Jakarta, Indonesia ",
                              style: TextStyle(
                                color: HexColor("#374151"),
                                fontSize: 12.sp,
                              ),
                            ),
                          ]),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              ImageAsset.archive,
                              color: HexColor("#111827"),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .65,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RecentJobItem(
                                    text: "Fulltime",
                                    width: ScreenUtil().setWidth(73),
                                    height: ScreenUtil().setHeight(35)),
                                RecentJobItem(
                                    text: "Remote",
                                    width: ScreenUtil().setWidth(72),
                                    height: ScreenUtil().setHeight(35)),
                                RecentJobItem(
                                    text: "Senior",
                                    width: ScreenUtil().setWidth(65),
                                    height: ScreenUtil().setHeight(35)),
                              ],
                            ),
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "\$15K",
                                style: TextStyle(
                                    color: HexColor("#2E8E18"),
                                    fontSize: 16.sp,
                                    letterSpacing: .1,
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: "/Month",
                                style: TextStyle(
                                    color: HexColor("#6B7280"),
                                    fontSize: 16.sp,
                                    letterSpacing: .1,
                                    fontWeight: FontWeight.w500)),
                          ])),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
