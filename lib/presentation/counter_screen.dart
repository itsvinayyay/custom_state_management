import 'dart:developer';

import 'package:custom_state_management/custom_state_management/custom_state_management.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Custom State Management", style: TextStyle(color: Colors.white, fontSize: 16,),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log("Floating Action Button is pressed! IncreamentCounterValue method has been called...");
          CounterProvider.of(context).increamentCounterValue();
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: CounterTextWidget()
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "You've pressed the counter\nthis many times!",
            style: TextStyle(color: Colors.grey.shade300),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class CounterTextWidget extends StatelessWidget {
  const CounterTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final counterValue = CounterProvider.of(context).counterValue;
    return Text(
      counterValue.toString(),
      style: const TextStyle(fontSize: 80, color: Colors.white),
    );
  }
}




