import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomNavBarIndex extends StateNotifier<int>{
  BottomNavBarIndex(): super(0);

  void setIndex (int index){
    state = index;
  }

}

final indexProvider = StateNotifierProvider<BottomNavBarIndex,int>((ref) => BottomNavBarIndex());

