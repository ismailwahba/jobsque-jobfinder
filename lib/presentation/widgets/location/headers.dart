import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/constants/hexa_color.dart';

class Headers extends StatelessWidget {
  const Headers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Where are you prefefred Location?",
            style: TextStyle(
                fontSize: 24.sp,
                color: HexColor("#111827"),
                letterSpacing: .1,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "Tell us what you’re interested in so we can\ncustomise the app for your needs.",
            style: TextStyle(
                fontSize: 16.sp,
                color: HexColor("#737379"),
                letterSpacing: .1,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
