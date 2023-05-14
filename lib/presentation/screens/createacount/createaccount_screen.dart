// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable, unused_field, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/constants/icons.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/main.dart';
import 'package:graduation_app/presentation/widgets/createscreen/customsocialbutton.dart';
import 'package:graduation_app/presentation/widgets/createscreen/form.dart';
import 'package:graduation_app/presentation/widgets/createscreen/homeindecator.dart';
import 'package:graduation_app/presentation/widgets/createscreen/signupinformation.dart';

import '../../../component/createscreen/createscreen.dart';
import '../../../constants/colors.dart';
import '../../../constants/hexa_color.dart';
import '../../../constants/images.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  // String bla ="dfsdfsdfsdfsdfsdfsdf";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .62,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            iconSize: 24.w,
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, routeOnboardingScreen);
                            },
                            icon: Icon(AppIcons.arrowback),
                            color: AppColor.arrowicon,
                          ),
                          Image.asset(
                            ImageAsset.logoImage,
                            width: ScreenUtil().setWidth(81),
                            height: ScreenUtil().setHeight(19),
                          )
                        ],
                      ),
                      CreateInformation(),
                    ],
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * .31,
                    child: Column(
                      children: const [
                        SignUpInformation(),
                        // SizedBox(
                        //   height: 20.h,
                        // ),
                        SocialButton(),
                        // SizedBox(
                        //   // height: 10.h,
                        // ),
                      ],
                    )),
                SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                    child: HomeIndecator()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
