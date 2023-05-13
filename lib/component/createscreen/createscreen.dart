// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/hexa_color.dart';

Widget defaultForm(
        {required String hintText,
        Widget? prefix,
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

Widget defaultButtonCreateScreen(
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

Widget defaultButtonSocial(
        {required String url, required String text, TextStyle? textStyle}) =>
    Container(
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
              Image.asset(
                url,
              ),
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

// Widget validPass() => Text(
//       "Password must be at least 8 characters",
//       style: TextStyle(
//           fontSize: 16.sp, color: HexColor("#FF472B"), letterSpacing: .50),
//     );
String bla() {
  return "adsdasdasdasd";
}

validPass() {
  return Text(
    "Password must be at least 8 characters",
    style: TextStyle(color: HexColor("#60C631")),
  );
}

Text inValidPass() {
  return Text(
    "Password must be at least 8 ",
    style: TextStyle(color: HexColor("#FF472B")),
  );
}

Pass() {
  return Text(
    "Password must be at least 8 characters",
    style: TextStyle(color: Colors.amber),
  );
}
