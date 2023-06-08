// ignore_for_file: prefer_const_constructors, avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

Widget defaultButtonLoginScreenclicked(
        {Function()? onPressed,
        required TextStyle textStyle,
        required String text}) =>
    Container(
      width: ScreenUtil().setWidth(357),
      height: ScreenUtil().setHeight(48),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000),
          color: AppColor.primaryColor),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
Widget defaultButtonLoginScreenUnclicked(
        {Function()? onPressed,
        required TextStyle textStyle,
        required String text}) =>
    Container(
      width: ScreenUtil().setWidth(357),
      height: ScreenUtil().setHeight(48),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000),
          color: AppColor.borderColor),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(text, style: textStyle),
      ),
    );
