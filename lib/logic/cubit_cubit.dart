import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'cubit_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitState());
  static get(context) => BlocProvider.of(context);
  List <bool> selectedIndex = [] ;
  List <DateTime> daysInMonth =[];
  void getDates(){
    DateTime now = DateTime.now();
    DateTime last = DateTime(now.year,now.month+1,0);
    DateTime today = now;
    for(int i = now.day ; i<= last.day ; i++){
      daysInMonth.add(today);
      selectedIndex.add(false);
      today = today.add(const Duration(days: 1));
    }
    print(last);
  }
  int currentIndex = 0;
  void dataClick (index){
    selectedIndex[index]=false;
    selectedIndex[index]=true;
    currentIndex =index;
    print(index);
    emit(ButtonClick());

  }
}
