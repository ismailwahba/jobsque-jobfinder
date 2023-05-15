import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/interestedtypesscreen/interestedtypes_screen.dart';
import 'package:graduation_app/constants/hexa_color.dart';

class SelectedTypes extends StatelessWidget {
  const SelectedTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .66,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 1.5,
          crossAxisSpacing: 12.w,
          mainAxisSpacing: 12.h,
        ),
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: contentstypes.length,
        itemBuilder: (ctx, index) {
          return GridTile(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            // width: ScreenUtil().setWidth(145),
            height: ScreenUtil().setHeight(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: HexColor("#1F0F172A"),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "${contentstypes[index].image}",
                  // width: ScreenUtil().setWidth(48),
                  // height: ScreenUtil().setHeight(48),
                ),
                Text(
                  "${contentstypes[index].title}",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: HexColor("#111827"),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ));
        },
      ),
    );
  }
}
