import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'interested_type_state.dart';

class InterestedTypeCubit extends Cubit<InterestedTypeState> {
  InterestedTypeCubit() : super(InterestedTypeInitial());
}
