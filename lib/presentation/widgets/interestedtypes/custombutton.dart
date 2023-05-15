import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          defaultButtonCreateScreen(
              width: ScreenUtil().setWidth(327),
              height: ScreenUtil().setHeight(48),
              text: 'Next',
              textStyle: const TextStyle(
                color: Colors.white,
              ),
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
