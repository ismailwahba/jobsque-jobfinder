// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:graduation_app/cubit/register/cubit/register_cubit.dart';

import '../../constants/colors.dart';
import '../../constants/hexa_color.dart';

Widget defaultFormCreateScreen(
        {required String hintText,
        Widget? prefix,
        Widget? suffix,
        Function(String)? onChanged,
        required String? Function(String?)? validator,
        TextEditingController? controller,
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
          keyboardType: TextInputType.text,
          controller: controller,
          decoration: InputDecoration(
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
          onChanged: onChanged,
          onFieldSubmitted: (String val) {
            print(val);
          },
          validator: validator),
    );

Widget defaultButtonCreateScreen({
  // required String text,
  Function()? onPressed,
  // TextStyle? textStyle,
  Color? color,
  // double? width,
  // double? height
}) =>
    Container(
      width: ScreenUtil().setWidth(357),
      height: ScreenUtil().setHeight(48),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000), color: color),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          "Create account",
          style: TextStyle(
              color: Colors.white, fontSize: 16.sp, letterSpacing: .1),
        ),
      ),
    );


// Widget defaultButtonSocial(
//         {required String url, required String text, TextStyle? textStyle}) =>
//     Container(
//       width: ScreenUtil().setWidth(154),
//       height: ScreenUtil().setHeight(57),
//       decoration: BoxDecoration(
//           color: HexColor('#FFFFFF'),
//           borderRadius: BorderRadius.circular(8),
//           border: Border.all(width: 1.0, color: AppColor.borderColor)),
//       child: MaterialButton(
//           onPressed: () {},
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Image.asset(
//                 url,
//               ),
//               Text(
//                 text,
//                 style: TextStyle(
//                   fontSize: 16.0.sp,
//                   fontWeight: FontWeight.w500,
//                   color: AppColor.textSocialButton,
//                 ),
//               )
//             ],
//           )),
//     );
