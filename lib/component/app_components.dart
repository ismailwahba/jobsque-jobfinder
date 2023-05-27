// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/constants/icons.dart';
import 'package:graduation_app/constants/images.dart';

class DefaultButtonScreens extends StatelessWidget {
  String text;
  Color color;
  Color? textColor;
  TextStyle textStyle;
  void Function()? onPressed;
  DefaultButtonScreens(
      {Key? key,
      required this.text,
      required this.textStyle,
      required this.onPressed,
      this.textColor,
      required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtil().setWidth(327),
        height: ScreenUtil().setHeight(48),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000.r), color: color),
        child: MaterialButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: textStyle,
          ),
        ));
  }
}

class ArrowBackIcon extends StatelessWidget {
  void Function()? onPressed;
  ArrowBackIcon({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 24.w,
      onPressed: onPressed,
      icon: Icon(AppIcons.arrowback),
      color: AppColor.arrowicon,
    );
  }
}

class DefaultSocialButtons extends StatelessWidget {
  TextStyle? textStyle;
  String text;
  String url;
  DefaultSocialButtons({
    Key? key,
    this.textStyle,
    required this.text,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(154),
      height: ScreenUtil().setHeight(57),
      decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1.0, color: AppColor.borderColor)),
      child: MaterialButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(url),
              Text(
                text,
                style: TextStyle(
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColor.textSocialButton,
                ),
              )
            ],
          )),
    );
  }
}

Widget defaultSearchForm() => SizedBox(
      width: ScreenUtil().setWidth(327),
      height: ScreenUtil().setHeight(48),
      child: TextFormField(
        // controller: emailController,
        keyboardType: TextInputType.text,
        // controller: controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Search....",
            hintStyle: TextStyle(color: AppColor.textformfield, fontSize: 14.sp
                // color: HexColor('#DA6317').withOpacity(.40),
                ),
            prefixIcon: Icon(
              Icons.search,
              color: HexColor('#F9A84D'),
              size: 24.w,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.r),
                borderSide: BorderSide(
                    // style: BorderStyle.none,
                    color: AppColor.borderColor,
                    width: 1.w)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.r),
              borderSide: BorderSide(
                color: HexColor('#F9A84D'),
              ),
            )),
      ),
    );
