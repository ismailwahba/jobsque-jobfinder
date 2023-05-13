// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/createscreen/createscreen.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/controller.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/constants/images.dart';
import 'package:graduation_app/main.dart';

class CreateInformation extends StatefulWidget {
  const CreateInformation({super.key});

  @override
  State<CreateInformation> createState() => _CreateInformationState();
}

class _CreateInformationState extends State<CreateInformation> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: ControllerCreateAccount.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cereate Account",
            style: TextStyle(
                fontSize: 27.sp,
                letterSpacing: 1.0.w,
                // fontFamily: 'Flu',
                color: HexColor('#111827'),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 7.h,
          ),
          Text(
            "Please create an account to find your dream job",
            style: TextStyle(
              fontSize: 15.sp,
              // letterSpacing: 1.0.w,
              // fontFamily: 'Flu',
              color: AppColor.grey,
              // fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          defaultForm(
              contentPadding: EdgeInsetsDirectional.fromSTEB(0, 16.h, 0, 16.h),
              width: ScreenUtil().setWidth(327),
              height: ScreenUtil().setHeight(56),
              prefix: Image.asset(ImageAsset.profileiconcreate),
              hintText: "Username",
              hintStyle: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.textformfield,
                  letterSpacing: .3.w),
              validator: (val) {
                if (val!.isEmpty) {
                  return "UserName Must Not Be Empty";
                }
                return null;
              },
              controller: ControllerCreateAccount.usernameController),
          SizedBox(
            height: 10.0.h,
          ),
          defaultForm(
              contentPadding: EdgeInsetsDirectional.fromSTEB(0, 16.h, 0, 16.h),
              width: ScreenUtil().setWidth(327),
              height: ScreenUtil().setHeight(56),
              prefix: Image.asset(ImageAsset.smsiconecreate),
              hintText: "Email",
              hintStyle: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.textformfield,
                  letterSpacing: .3.w),
              validator: (val) {
                if (val!.isEmpty) {
                  return "Email address Must Not Be Empty";
                } else if (val.length < 8) {}
                return null;
              },
              controller: ControllerCreateAccount.emailController),
          SizedBox(
            height: 10.0.h,
          ),
          defaultForm(
              contentPadding: EdgeInsetsDirectional.fromSTEB(0, 16.h, 0, 16.h),
              width: ScreenUtil().setWidth(327),
              height: ScreenUtil().setHeight(56),
              prefix: Image.asset(ImageAsset.lockiconecreate),
              obscureText: _obscureText,
              suffix: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility)),
              hintText: "Password",
              hintStyle: TextStyle(
                  fontSize: 14.sp,
                  color: AppColor.textformfield,
                  letterSpacing: .3.w),
              validator: (val) {
                if (val!.isEmpty) {
                  return "Password Must Not Be Empty";
                } else if (ControllerCreateAccount
                        .passwordController.text.length <
                    8) {
                  return "Password must be at least 8 characters";
                }
              },
              controller: ControllerCreateAccount.passwordController),
          SizedBox(
            height: 10.0.h,
          ),
          Row(
            children: [
              Text("Password must be at least 8 characters",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColor.textformfield,
                      letterSpacing: .50)),
            ],
          ),
        ],
      ),
    );
  }
}
