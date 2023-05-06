import 'package:flutter/material.dart';
import 'package:rolldiceapp/components/gradient_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static late double width;
  static late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 47, 4, 146),
          Color.fromARGB(255, 45, 7, 98),
        ),
      ),
    );
  }
}
