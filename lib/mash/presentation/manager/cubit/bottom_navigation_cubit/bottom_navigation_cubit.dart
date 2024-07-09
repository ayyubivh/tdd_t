import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/pretty_printer.dart';

part 'bottom_navigation_state.dart';
part 'bottom_navigation_cubit.freezed.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(BottomNavigationState.initial());

  int currentIndex = 0;

  changeBottomNav(int index) {
    currentIndex = index;
    prettyPrint("changing index $index", type: "ERROR");

    // Future.delayed(Duration(seconds: 0), () {
    //   shadeWidth = 0;
    // });
    emit(state.copyWith(index: currentIndex));
  }
}
