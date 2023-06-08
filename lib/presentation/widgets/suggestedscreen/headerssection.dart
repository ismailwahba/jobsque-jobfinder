import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/app_components.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/images.dart';

class HeadersSection extends StatelessWidget {
  const HeadersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  border: Border.all(color: AppColor.borderColor, width: 1.w)),
              child: IconButton(
                  onPressed: () {}, icon: Image.asset(ImageAsset.notification)),
            )
          ],
        ),
        
      ],
    );
  }
}
