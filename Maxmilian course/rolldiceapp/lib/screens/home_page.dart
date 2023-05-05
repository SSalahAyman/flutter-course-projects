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
    return Scaffold(
      body: GradientContainer(),
    );
  }
}
