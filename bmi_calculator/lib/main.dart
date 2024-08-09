import 'package:bmi_calculator/modules/bmi_screen.dart';
import 'package:flutter/material.dart';

// stateless one class , stateful 2 classes one of them is private
void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BmiScreen(),
    debugShowCheckedModeBanner: false,
    );
  }
}