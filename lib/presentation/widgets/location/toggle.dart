import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Toggle extends StatelessWidget {
  const Toggle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ToggleSwitch(
                  customTextStyles: [
                    TextStyle(fontWeight: FontWeight.w500, letterSpacing: .1.w)
                  ],
                  fontSize: 14.sp,

                  minWidth: 150.w,
                  cornerRadius: 100.0.r,
                  borderWidth: 1,
                  borderColor: [
                    AppColor.borderColor,
                    AppColor.borderColor,
                    // Colors.red,
                    // HexColor("#F4F4F5"),
                  ],
                  // borderWidth: 1.5,
                  // customHeights: [2.5, 2.5],
                  activeBgColors: [
                    [HexColor("#091A7A")],
                    [HexColor("#091A7A")],
                  ],
                  activeFgColor: Colors.white,
                  inactiveBgColor: HexColor("#F4F4F5"),
                  inactiveFgColor: HexColor("#6B7280"),
                  initialLabelIndex: 1,
                  totalSwitches: 2,
                  labels: const ['Work From Office', 'Remote Work'],
                  minHeight: 50.h,

                  radiusStyle: true,
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                Text(
                  "Select the country you want for your job",
                  style: TextStyle(
                    fontSize: 16.sp,
                    letterSpacing: .1.w,
                    color: HexColor("#737379"),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
  }
}