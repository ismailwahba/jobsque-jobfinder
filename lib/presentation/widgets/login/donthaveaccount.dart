import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/constants/string.dart';

class DontHaveAccount extends StatefulWidget {
  const DontHaveAccount({super.key});

  @override
  State<DontHaveAccount> createState() => _DontHaveAccountState();
}

class _DontHaveAccountState extends State<DontHaveAccount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Dont have an account?",
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColor.textformfield,
              // letterSpacing: 1
            )),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, routeCreateAccountScreen);
            },
            child: Text(
              "Register",
              style: TextStyle(fontSize: 14.sp, color: HexColor("#3366FF")
                  // fontWeight: FontWeight.w500,
                  ),
            ))
      ],
    );
  }
}
