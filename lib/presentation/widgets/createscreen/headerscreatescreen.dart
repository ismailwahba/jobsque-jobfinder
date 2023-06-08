import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/hexa_color.dart';

class Headers extends StatelessWidget {
  const Headers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Cereate Account",
          style: TextStyle(
              fontSize: 27.sp,
              letterSpacing: 1.0.w,
              // fontFamily: 'Flu',
              color: HexColor('#111827'),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 7.h,
        ),
        Text(
          "Please create an account to find your dream job",
          style: TextStyle(
            fontSize: 15.sp,
            // letterSpacing: 1.0.w,
            // fontFamily: 'Flu',
            color: AppColor.grey,
            // fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}
