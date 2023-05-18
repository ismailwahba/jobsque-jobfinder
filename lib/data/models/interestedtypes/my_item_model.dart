import 'package:flutter/material.dart';
import 'package:graduation_app/data/models/indecator/indecatorContent_model.dart';
import 'package:graduation_app/data/models/interestedtypes/interestedtypes_model.dart';

class MyItem with ChangeNotifier{
  List<InterestedTypes> myItem =[];
  List<InterestedTypes> get selectedList =>myItem;


  void add(InterestedTypes interestedTypes){
    myItem.add(interestedTypes);
    notifyListeners();
  }
  void remove(InterestedTypes interestedTypes){
    myItem.remove(interestedTypes);
    notifyListeners();
  }

  bool hasInterestedTypes(InterestedTypes interestedTypes){
    return myItem.where((element) => element.image==interestedTypes.title).isNotEmpty;
  }
}