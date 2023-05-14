// ignore_for_file: body_might_complete_normally_nullable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/cubit/cubit/onboarding_cubit.dart';
import 'package:graduation_app/presentation/screens/createacount/createaccount_screen.dart';
import 'package:graduation_app/presentation/screens/onboarding/onboarding_screen.dart';

class AppRouter {
  AppRouter() {
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeOnboardingScreen:
        {
          return MaterialPageRoute(
              builder: (_) => BlocProvider(
                    create: (context) => OnboardingCubit(),
                    child: OnBoardingScreen(),
                  ));
        }
      case routeCreateAccountScreen:
        {
          return MaterialPageRoute(
              builder: (_) => BlocProvider(
                    create: (context) => OnboardingCubit(),
                    child: CreateAccountScreen(),
                  ));
        }
    }
  }
}
