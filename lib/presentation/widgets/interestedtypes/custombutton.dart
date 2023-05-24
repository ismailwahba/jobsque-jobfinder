import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/app_components.dart';
import 'package:graduation_app/component/createscreen/createscreen.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/presentation/widgets/createscreen/homeindecator.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .11,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DefaultButtonScreens(
              text: 'Next',
              textStyle: TextStyle(
                  color: Colors.white, fontSize: 16.sp, letterSpacing: .1),
              color: HexColor("#3366FF"),
              onPressed: () {
                Navigator.pushNamed(context, routeLocationScreen);
              }),
          const HomeIndecator(),
        ],
      ),
    );
  }
}
