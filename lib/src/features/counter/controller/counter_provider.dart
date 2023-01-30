import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;

  increment(){
    counter++;
    notifyListeners();
  }

  decrement(){
    if(counter != 0){
      counter--;
      notifyListeners();
    }
  }

  reset(){
    counter = 0;
    notifyListeners();
  }
}