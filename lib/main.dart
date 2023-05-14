
import 'package:flutter/material.dart';
import 'package:graduation_app/presentation/widgets/app_router.dart';

import 'approot/app_root.dart';

PageController pageController = PageController(initialPage: 0);


void main() {

  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}
