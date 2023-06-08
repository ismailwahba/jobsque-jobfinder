import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/hexa_color.dart';

class HeadersLogin extends StatelessWidget {
  const HeadersLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Login",
          style: TextStyle(
              fontSize: 28.sp,
              letterSpacing: 0.1.w,
              // fontFamily: 'Flu',
              color: HexColor('#111827'),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 7.h,
        ),
        Text(
          "Please login to find your dream job",
          style: TextStyle(
            fontSize: 16.sp,
            letterSpacing: .1.w,
            fontWeight: FontWeight.w400,
            // fontFamily: 'Flu',
            color: AppColor.grey,
            // fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
