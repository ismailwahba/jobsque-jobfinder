import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/constants/images.dart';
import 'package:graduation_app/cubit/homelayout/mainlayout_cubit.dart';

class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({super.key});

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainLayoutCubit(),
      child: BlocConsumer<MainLayoutCubit, MainLayoutState>(
        listener: (context, state) {},
        builder: (context, state) {
          MainLayoutCubit cubit = MainLayoutCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              title:
                  Text(cubit.titles[MainLayoutCubit.get(context).currentIndex]),
            ),
            body: MainLayoutCubit.get(context).screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                elevation: 0,
                // backgroundColor: Colors.red,
                // fixedColor: Colors.red,
                // selectedIconTheme: colo,

                // selectedItemColor: HexColor("#3366FF"),
                // selectedIcon: HexColor("#3366FF"),
                // selectedIconTheme:IconThemeData.fallback() ,

                // backgroundColor: HexColor("#3366FF"),
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
                      icon: Image.asset(ImageAsset.briefcase),
                      label: "Applied"),
                  BottomNavigationBarItem(
                      icon: Image.asset(ImageAsset.archive), label: "Saved"),
                  BottomNavigationBarItem(
                      icon: Image.asset(ImageAsset.profilevector),
                      label: "Profile"),
                ]),
          );
        },
      ),
    );
  }
}
