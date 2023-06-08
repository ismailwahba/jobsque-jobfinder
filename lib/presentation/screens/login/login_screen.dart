import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/app_components.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/cubit/login/login_cubit.dart';
import 'package:graduation_app/presentation/widgets/createscreen/homeindecator.dart';
import 'package:graduation_app/presentation/widgets/login/donthaveaccount.dart';
import 'package:graduation_app/presentation/widgets/login/headerslogin.dart';
import 'package:graduation_app/presentation/widgets/login/infologinprocess.dart';
import 'package:graduation_app/presentation/widgets/login/loginaccountline.dart';
import 'package:graduation_app/presentation/widgets/login/loginprocess.dart';
import 'package:graduation_app/presentation/widgets/login/rememberme_line.dart';
import 'package:graduation_app/presentation/widgets/login/socialbuttons.dart';
import 'package:graduation_app/utils/cach_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // late AnimationController localAnimationController;
  @override
  void initState() {
    if (CacheHelper.getData(key: 'checked') ?? false) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacementNamed(context, routeHomeLayoutScreen);
      });
      // Navigator.pushReplacementNamed(context, routeHomeLayoutScreen);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .56,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LogoItem(),
                          const HeadersLogin(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .03,
                          ),
                          const LoginProcess(),
                          const RememberMeLine(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .37,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DontHaveAccount(),
                          InfoLoginProcess(),
                          LoginAcoountLine(),
                          SocialButtonsLogin(),
                        ],
                      ),
                    ),
                    const HomeIndecator()
                  ]),
                )),
          ),
        );
      },
    );
  }
}
