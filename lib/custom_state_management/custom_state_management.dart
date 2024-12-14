import 'dart:developer';

import 'package:custom_state_management/custom_state_management/custom_state.dart';
import 'package:flutter/material.dart';

class CounterProvider extends InheritedNotifier<CounterData> {
  const CounterProvider(
      {super.key, required CounterData counterData, required super.child})
      : super(notifier: counterData);

  static CounterData of(BuildContext context) {
    log("Calling the `of` method and locating the nearest Ancestor(of type Inherited Notifier) => CounterProvider.");
    return context
            .dependOnInheritedWidgetOfExactType<CounterProvider>()
            ?.notifier ??
        (throw Exception("Counter Notifier is not found in context"));
  }
}