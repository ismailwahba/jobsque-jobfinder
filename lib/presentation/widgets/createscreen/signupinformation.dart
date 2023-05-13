import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/createscreen/createscreen.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/controller.dart';
import 'package:graduation_app/constants/hexa_color.dart';

class SignUpInformation extends StatelessWidget {
  const SignUpInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account?",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColor.textformfield,
                  // letterSpacing: 1
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 14.sp, color: HexColor("#3366FF")
                      // fontWeight: FontWeight.w500,
                      ),
                ))
          ],
        ),
        defaultButtonCreateScreen(
            text: "Create account",
            textStyle: TextStyle(
                color: HexColor("#6B7280"),
                letterSpacing: .50,
                fontWeight: FontWeight.w500),
            color: AppColor.borderColor,
            width: ScreenUtil().setWidth(327),
            height: ScreenUtil().setHeight(48),
            onPressed: () {
              if (ControllerCreateAccount.formKey.currentState!.validate()) {
                print("Succes");
              }
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: ScreenUtil().setWidth(64.5),
                height: ScreenUtil().setHeight(2),
                child: Container(
                  decoration: BoxDecoration(color: AppColor.borderColor),
                )),
            TextButton(
              child: Text(
                "Or Sign up With Account",
                style: TextStyle(
                    color: HexColor("#6B7280"),
                    fontSize: 14.sp,
                    letterSpacing: .50.w),
              ),
              onPressed: () {},
            ),
            SizedBox(
                width: ScreenUtil().setWidth(64.5),
                height: ScreenUtil().setHeight(2),
                child: Container(
                  decoration: BoxDecoration(color: AppColor.borderColor),
                )),
          ],
        ),
      ],
    );
  }
}
