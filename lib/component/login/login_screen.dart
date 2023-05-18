// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/hexa_color.dart';

Widget defaultFormLoginScreen(
        {required String hintText,
        required Widget prefix,
        Widget? suffix,
        required String? Function(String?)? validator,
        required var controller,
        EdgeInsetsGeometry? contentPadding,
        double? width,
        double? height,
        obscureText = false,
        TextStyle? hintStyle}) =>
    SizedBox(
      width: width,
      height: height,
      child: TextFormField(
          obscureText: obscureText,
          // controller: emailController,
          keyboardType: TextInputType.text,
          controller: controller,
          decoration: InputDecoration(
            // border: BorderRadius.circular(20),
            contentPadding: contentPadding,
            filled: true,
            fillColor: HexColor('#ffffff'),
            hintText: hintText,
            hintStyle: hintStyle,
            prefixIcon: prefix,
            focusColor: Colors.green,
            iconColor: Colors.green,
            suffixIcon: suffix,

            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(
                    // style: BorderStyle.none,
                    color: AppColor.borderColor,
                    width: 1)),
          ),
          onChanged: (String val) {
            print(val);
          },
          onFieldSubmitted: (String val) {
            print(val);
          },
          validator: validator),
    );

Widget defaultButtonLoginScreen(
        {required String text,
        Function()? onPressed,
        TextStyle? textStyle,
        Color? color,
        double? width,
        double? height}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000), color: color),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
