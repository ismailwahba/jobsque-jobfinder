import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/app_components.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/presentation/widgets/createscreen/homeindecator.dart';

class CustomButtonLocationScreen extends StatelessWidget {
  const CustomButtonLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DefaultButtonScreens(
            color: AppColor.primaryColor,
            text: "Next",
            textStyle: TextStyle(
                color: Colors.white, fontSize: 16.sp, letterSpacing: .1
                ),
            onPressed: () {
              Navigator.pushNamed(context, routesetUpScreen);
            },
          ),
          const HomeIndecator()
        ],
      ),
    );
  }
}
