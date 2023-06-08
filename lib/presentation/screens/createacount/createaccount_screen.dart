// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable, unused_field, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/app_components.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/presentation/widgets/createscreen/createbutton.dart';
import 'package:graduation_app/presentation/widgets/createscreen/customsocialbutton.dart';
import 'package:graduation_app/presentation/widgets/createscreen/form.dart';
import 'package:graduation_app/presentation/widgets/createscreen/haveaccount.dart';
import 'package:graduation_app/presentation/widgets/createscreen/headerscreatescreen.dart';
import 'package:graduation_app/presentation/widgets/createscreen/homeindecator.dart';
import 'package:graduation_app/presentation/widgets/createscreen/iconback.dart';
import 'package:graduation_app/presentation/widgets/createscreen/signupline.dart';
import '../../../constants/images.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
                  height: MediaQuery.of(context).size.height * .60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BackIcon(),
                          LogoItem(),
                        ],
                      ),
                      Headers(),
                      CreateInformation()
                    ],
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * .22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        HaveAccount(),
                        CreateButton(),
                        SignUpLine(),
                      ],
                    )),
                SizedBox(
                    height: MediaQuery.of(context).size.height * .18,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SocialButton(),
                        HomeIndecator(),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
