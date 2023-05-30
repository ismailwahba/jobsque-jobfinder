// // import 'dart:js';

// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:graduation_app/constants/colors.dart';
// import 'package:graduation_app/constants/hexa_color.dart';
// import 'package:graduation_app/constants/images.dart';

// class SuggestedJobgroup extends StatelessWidget {
//   const SuggestedJobgroup({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height * .26,
//       child: ListView.separated(
//         separatorBuilder: (context, index) => SizedBox(
//           width: 20.w,
//         ),
//         shrinkWrap: true,
//         // physics: const NeverScrollableScrollPhysics(),
//         scrollDirection: Axis.horizontal,
//         itemCount: 3,
//         itemBuilder: (context, index) => Container(
//           padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
//           width: ScreenUtil().setWidth(300),
//           height: ScreenUtil().setHeight(183),
//           decoration: BoxDecoration(
//               color: HexColor("#091A7A"),
//               borderRadius: BorderRadius.circular(20.r)),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Image.asset(ImageAsset.archive),
//                   Column(
//                     children: [
//                       Text(
//                         "لامش لامش",
//                         style: TextStyle(fontSize: 18.sp),
//                       ),
//                       Text(
//                         "bla",
//                         style: TextStyle(fontSize: 12.sp),
//                       ),
//                     ],
//                   ),
//                   Image.asset(ImageAsset.archive)
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   GestureDetector(
//                     child: Container(
//                       alignment: Alignment.center,
//                       width: ScreenUtil().setWidth(87),
//                       height: ScreenUtil().setHeight(30),
//                       decoration: BoxDecoration(
//                           color: AppColor.grey.withOpacity(.3),
//                           borderRadius: BorderRadius.circular(100.r)),
//                       child: Text(
//                         "Fulltime",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 12.sp,
//                             fontWeight: FontWeight.w400),
//                         // textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     child: Container(
//                       alignment: Alignment.center,
//                       width: ScreenUtil().setWidth(87),
//                       height: ScreenUtil().setHeight(30),
//                       decoration: BoxDecoration(
//                           color: AppColor.grey.withOpacity(.3),
//                           borderRadius: BorderRadius.circular(100.r)),
//                       child: Text(
//                         "Fulltime",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 12.sp,
//                             fontWeight: FontWeight.w400),
//                         // textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     child: Container(
//                       alignment: Alignment.center,
//                       width: ScreenUtil().setWidth(87),
//                       height: ScreenUtil().setHeight(30),
//                       decoration: BoxDecoration(
//                           color: AppColor.grey.withOpacity(.3),
//                           borderRadius: BorderRadius.circular(100.r)),
//                       child: Text(
//                         "Fulltime",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 12.sp,
//                             fontWeight: FontWeight.w400),
//                         // textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("\K-15K/Month"),
//                   Container(
//                       width: ScreenUtil().setWidth(96),
//                       height: ScreenUtil().setHeight(32),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(1000.r),
//                           color: HexColor("#3366FF")),
//                       child: MaterialButton(
//                         onPressed: () {},
//                         child: Text(
//                           "Apply now",
//                           style: TextStyle(
//                               fontSize: 12.sp, fontWeight: FontWeight.w500),
//                         ),
//                       ))
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class RecentJobGroup extends StatelessWidget {
//   const RecentJobGroup({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       // height: MediaQuery.of(context).size.height * .3,
//       child: ListView.separated(
//         physics: NeverScrollableScrollPhysics(),
//         shrinkWrap: true,
//         scrollDirection: Axis.vertical,
//         separatorBuilder: (context, index) => Container(
//           height: 1.h,
//           // width: 1.w,
//           color: AppColor.borderColor,
//         ),
//         itemCount: 6,
//         itemBuilder: (context, index) => SizedBox(
//           height: MediaQuery.of(context).size.height * .18,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             // crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Image.asset(ImageAsset.twitterLogo),
//                   Column(children: [
//                     Text(
//                       "Senior UI Designer",
//                       style: TextStyle(
//                         color: HexColor("#111827"),
//                         fontSize: 18.sp,
//                       ),
//                     ),
//                     Text(
//                       "Twitter • Jakarta, Indonesia ",
//                       style: TextStyle(
//                         color: HexColor("#374151"),
//                         fontSize: 12.sp,
//                       ),
//                     ),
//                   ]),
//                   Image.asset(ImageAsset.archive)
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   GestureDetector(
//                     child: Container(
//                       alignment: Alignment.center,
//                       width: ScreenUtil().setWidth(73),
//                       height: ScreenUtil().setHeight(26),
//                       decoration: BoxDecoration(
//                           color: HexColor("#D6E4FF"),
//                           borderRadius: BorderRadius.circular(100.r)),
//                       child: Text(
//                         "Fulltime",
//                         style: TextStyle(
//                             color: HexColor("#3366FF"),
//                             fontSize: 12.sp,
//                             fontWeight: FontWeight.w400),
//                         // textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     child: Container(
//                       alignment: Alignment.center,
//                       width: ScreenUtil().setWidth(72),
//                       height: ScreenUtil().setHeight(26),
//                       decoration: BoxDecoration(
//                           color: HexColor("#D6E4FF"),
//                           borderRadius: BorderRadius.circular(100.r)),
//                       child: Text(
//                         "Remote",
//                         style: TextStyle(
//                             color: HexColor("#3366FF"),
//                             fontSize: 12.sp,
//                             fontWeight: FontWeight.w400),
//                         // textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     child: Container(
//                       alignment: Alignment.center,
//                       width: ScreenUtil().setWidth(65),
//                       height: ScreenUtil().setHeight(26),
//                       decoration: BoxDecoration(
//                           color: HexColor("#D6E4FF"),
//                           borderRadius: BorderRadius.circular(100.r)),
//                       child: Text(
//                         "Senior",
//                         style: TextStyle(
//                             color: HexColor("#3366FF"),
//                             fontSize: 12.sp,
//                             fontWeight: FontWeight.w400),
//                         // textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                   RichText(
//                       text: TextSpan(children: [
//                     TextSpan(
//                         text: "\$15K",
//                         style: TextStyle(
//                             color: HexColor("#2E8E18"),
//                             fontSize: 16..sp,
//                             letterSpacing: .1,
//                             fontWeight: FontWeight.w500)),
//                     TextSpan(
//                         text: "/Month",
//                         style: TextStyle(
//                             color: HexColor("#6B7280"),
//                             fontSize: 16..sp,
//                             letterSpacing: .1,
//                             fontWeight: FontWeight.w500)),
//                   ])),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
