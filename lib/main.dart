// ignore_for_file: duplicate_import

// import 'package:bloc/bloc.dart';
// import 'package:food_app/src/app_root.dart';
import 'package:flutter/material.dart';

import 'approot/app_root.dart';

PageController pageController = PageController(initialPage: 0);
int currentPageIndecator = 0;

void main() {
  // Bloc.observer = MyBlocObserver();

  runApp(MyApp());
}
