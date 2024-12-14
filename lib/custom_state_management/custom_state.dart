import 'dart:developer';

import 'package:flutter/material.dart';

class CounterData extends ChangeNotifier {
  int _counterValue = 0;
  int get counterValue => _counterValue;

  void increamentCounterValue() {
    log("Increamenting Counter Value");
    _counterValue++;
    notifyListeners();
  }
}