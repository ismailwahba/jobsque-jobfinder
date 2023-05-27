// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, unnecessary_import, duplicate_ignore, use_key_in_widget_constructors, unused_import, duplicate_import, override_on_non_overriding_member, must_be_immutable

// import 'package:app_notes/modules/home/note_screen.dart';
// import 'package:app_notes/modules/home/note.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/cubit/login/login_cubit.dart';
import 'package:graduation_app/cubit/onboarding/onboarding_cubit.dart';
// import 'package:graduation_app/cubit/register/cubit/register_cubit.dart';
import 'package:graduation_app/cubit/register/register_cubit.dart';
import 'package:graduation_app/presentation/screens/SuggestedJob/suggestedJob_screen.dart';
import 'package:graduation_app/presentation/screens/interestedtypes/interestedtypes_screen.dart';
import 'package:graduation_app/presentation/screens/location/location_screen.dart';
import 'package:graduation_app/presentation/screens/login/login_screen.dart';
import 'package:graduation_app/presentation/screens/mainlayout/mainlayout_screen.dart';
import 'package:graduation_app/presentation/screens/setupscreen/setup_screen.dart';

import 'package:graduation_app/presentation/widgets/app_router.dart';

import '../presentation/screens/createacount/createaccount_screen.dart';
import '../presentation/screens/onboarding/onboarding_screen.dart';
import '../presentation/screens/splach/splach_screen.dart';
// / import '../presentation/screens/splach/splash_screen.dart';

class MyApp extends StatelessWidget {
  @override
  late AppRouter appRouter;
  MyApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => OnboardingCubit(),
              ),
              BlocProvider(
                create: (context) => RegisterCubit(),
              ),
              BlocProvider(
                create: (context) => LoginCubit(),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              onGenerateRoute: appRouter.generateRoute,

              // theme: ThemeData(
              //   scaffoldBackgroundColor: Colors.white,
              //   appBarTheme: AppBarTheme(
              //     systemOverlayStyle: SystemUiOverlayStyle(
              //       statusBarColor: Colors.red,
              //       statusBarIconBrightness: Brightness.dark,
              //     ),
              //     // iconTheme: IconThemeData(color: Colors.black),
              //     // titleTextStyle: TextStyle(
              //     //     color: Colors.black,
              //     //     fontSize: 20.sp,
              //     //     fontWeight: FontWeight.bold),
              //     backgroundColor: Colors.white,
              //     elevation: 0,
              //   ),
              // ),
              // darkTheme: ThemeData(brightness: Brightness.dark),
              // themeMode: ThemeMode.dark,

              // You can use the library anywhere in the app even in theme

              home: SuggestJobScreen(),
            ));
      },
    );
  }
}
