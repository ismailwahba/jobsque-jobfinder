import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_app/presentation/screens/SuggestedJob/suggestedJob_screen.dart';
import 'package:graduation_app/presentation/screens/applied/applied_screen.dart';
import 'package:graduation_app/presentation/screens/messages/messages_screen.dart';
import 'package:graduation_app/presentation/screens/saved/saved_screen.dart';
import 'package:meta/meta.dart';

import '../../presentation/screens/profile/profile_screen.dart';

part 'mainlayout_state.dart';

class MainLayoutCubit extends Cubit<MainLayoutState> {
  MainLayoutCubit() : super(MainlayoutInitial());
  static MainLayoutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = const [
    SuggestJobScreen(),
    MessagesScreen(),
    AppliedScreen(),
    SavedScreen(),
    ProfileScreen(),
  ];
  List<String> titles = [
    'SuggestJobScreen',
    'MessagesScreen',
    'AppliedScreen',
    'SavedScreen',
    'ProfileScreen'
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(HomelayoutChangeBottomNavBarState());
  }
}
