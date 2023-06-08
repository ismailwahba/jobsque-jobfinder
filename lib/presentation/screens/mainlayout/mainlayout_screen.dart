// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/constants/images.dart';
import 'package:graduation_app/cubit/homelayout/mainlayout_cubit.dart';
import 'package:graduation_app/presentation/screens/login/login_screen.dart';
import 'package:graduation_app/utils/cach_helper.dart';

class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({super.key});

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainLayoutCubit, MainLayoutState>(
      builder: (context, state) {
        MainLayoutCubit cubit = MainLayoutCubit.get(context);

        return Scaffold(
          body: CacheHelper.getData(key: "checked") == false
              ? LoginScreen()
              : MainLayoutCubit.get(context).screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              selectedLabelStyle: TextStyle(color: HexColor("#3366FF")),
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(ImageAsset.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Image.asset(ImageAsset.message), label: "Messages"),
                BottomNavigationBarItem(
                    icon: Image.asset(ImageAsset.briefcase), label: "Applied"),
                BottomNavigationBarItem(
                    icon: Image.asset(ImageAsset.archivenav), label: "Saved"),
                BottomNavigationBarItem(
                    icon: Image.asset(ImageAsset.profilevector),
                    label: "Profile"),
              ]),
        );
      },
    );
  }
}
