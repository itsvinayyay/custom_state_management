import 'package:custom_state_management/custom_state_management/custom_state.dart';
import 'package:custom_state_management/custom_state_management/custom_state_management.dart';
import 'package:custom_state_management/presentation/counter_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final CounterData counterData = CounterData(); //Global Value
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: ApiProvider(api: Api(), child: MyHomePage()),
      home: CounterProvider(counterData: counterData, child: const CounterScreen()),
    );
  }
}

