import 'package:flutter/material.dart';
import 'package:graduation_app/presentation/widgets/app_router.dart';
import 'package:graduation_app/utils/cach_helper.dart';

import 'approot/app_root.dart';

PageController pageController = PageController(initialPage: 0);

Future<void> main() async {
  // bool islogin=true;
  // await CacheHelper.init();
  // await CacheHelper.getData(key: '');

  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}
