import 'package:flutter/material.dart';

class NumberProvider extends ChangeNotifier{
      int number = 0;
      Status currentState = Status.init;

      Future<void> decreaseNum() async {
          if(number>0){
            number = number-1;
          }else{
            number = 0;
          }
          currentState = Status.decreasing;
          notifyListeners();
          await Future.delayed(const Duration(seconds: 1));
          currentState = Status.decreased;
          notifyListeners();
      }
      Future<void> increaseNum() async {
          number = number+1;
          currentState = Status.increasing;
          notifyListeners();
          await Future.delayed(const Duration(seconds: 1));
          currentState =  Status.increased;
          notifyListeners();
      }


}
enum Status{
    init,
    increased,
    increasing,
    decreased,
    decreasing,
}