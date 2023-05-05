import 'package:flutter/material.dart';

const startAlignment = Alignment.bottomLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: <Color>[
            Color.fromARGB(143, 248, 7, 7),
            Color.fromARGB(122, 250, 5, 58),
          ],
        ),
      ),
    );
  }
}
