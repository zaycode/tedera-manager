import 'package:bloc/bloc.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(lastTabIndex: 0));

  void lastTab(int index){
    emit(NavigationState(lastTabIndex:index));
  }
}
