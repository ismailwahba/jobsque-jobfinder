// ignore_for_file: prefer_const_constructors, unnecessary_import, duplicate_ignore, use_key_in_widget_constructors, unused_import, duplicate_import

// import 'package:app_notes/modules/home/note_screen.dart';
// import 'package:app_notes/modules/home/note.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../presentation/screens/findgob/findgob_screen.dart';
import '../presentation/screens/splach/splach_screen.dart';
// import '../presentation/screens/splach/splash_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.red,
                statusBarIconBrightness: Brightness.dark,
              ),
              // iconTheme: IconThemeData(color: Colors.black),
              // titleTextStyle: TextStyle(
              //     color: Colors.black,
              //     fontSize: 20.sp,
              //     fontWeight: FontWeight.bold),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
          ),
          // darkTheme: ThemeData(brightness: Brightness.dark),
          // themeMode: ThemeMode.dark,

          // You can use the library anywhere in the app even in theme

          home: Splach(),
        );
      },
    );
  }
}
