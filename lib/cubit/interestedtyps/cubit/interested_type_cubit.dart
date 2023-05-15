import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'interested_type_state.dart';

class InterestedTypeCubit extends Cubit<InterestedTypeState> {
  InterestedTypeCubit() : super(InterestedTypeInitial());
}
