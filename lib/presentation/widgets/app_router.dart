// ignore_for_file: body_might_complete_normally_nullable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_app/constants/string.dart';
import 'package:graduation_app/cubit/onboarding/onboarding_cubit.dart';
import 'package:graduation_app/presentation/screens/createacount/createaccount_screen.dart';
import 'package:graduation_app/presentation/screens/interestedtypes/interestedtypes_screen.dart';
import 'package:graduation_app/presentation/screens/location/location_screen.dart';
import 'package:graduation_app/presentation/screens/login/login_screen.dart';
import 'package:graduation_app/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:graduation_app/presentation/screens/setupscreen/setup_screen.dart';

class AppRouter {
  // AppRouter() {}
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
      case routeInterestedTypesScreen:
        {
          return MaterialPageRoute(
              builder: (_) => BlocProvider(
                    create: (context) => OnboardingCubit(),
                    child: InterestedTypesScreen(),
                  ));
        }
      case routeLocationScreen:
        {
          return MaterialPageRoute(
              builder: (_) => BlocProvider(
                    create: (context) => OnboardingCubit(),
                    child: LocationScreen(),
                  ));
        }
      case routesetUpScreen:
        {
          return MaterialPageRoute(
              builder: (_) => BlocProvider(
                    create: (context) => OnboardingCubit(),
                    child: SetUpScreen(),
                  ));
        }
      case routeLoginScreen:
        {
          return MaterialPageRoute(
              builder: (_) => BlocProvider(
                    create: (context) => OnboardingCubit(),
                    child: LoginScreen(),
                  ));
        }
    }
  }
}
