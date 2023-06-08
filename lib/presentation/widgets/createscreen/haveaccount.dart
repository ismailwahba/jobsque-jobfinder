import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/constants/string.dart';

class HaveAccount extends StatefulWidget {
  const HaveAccount({super.key});

  @override
  State<HaveAccount> createState() => _HaveAccountState();
}

class _HaveAccountState extends State<HaveAccount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account?",
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColor.textformfield,
              // letterSpacing: 1
            )),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, routeLoginScreen);
            },
            child: Text(
              "Login",
              style: TextStyle(fontSize: 14.sp, color: HexColor("#3366FF")
                  // fontWeight: FontWeight.w500,
                  ),
            ))
      ],
    );
  }
}
