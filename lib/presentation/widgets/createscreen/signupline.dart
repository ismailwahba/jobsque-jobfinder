import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/hexa_color.dart';

class SignUpLine extends StatelessWidget {
  const SignUpLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: ScreenUtil().setWidth(64.5),
            height: ScreenUtil().setHeight(2),
            child: Container(
              decoration: BoxDecoration(color: AppColor.borderColor),
            )),
        Text(
          "Or Sign up With Account",
          style: TextStyle(
              color: HexColor("#6B7280"),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: .50.w),
        ),
        SizedBox(
            width: ScreenUtil().setWidth(64.5),
            height: ScreenUtil().setHeight(2),
            child: Container(
              decoration: BoxDecoration(color: AppColor.borderColor),
            )),
      ],
    );
  }
}
