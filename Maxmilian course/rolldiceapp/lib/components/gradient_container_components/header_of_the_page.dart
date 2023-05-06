import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageHeader extends StatelessWidget {
  static late double width;
  static late double height;
  const PageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Lets Roll the Dice",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'pacifico',
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: height * 0.01),
          child: Lottie.asset(
            width: width * 0.17,
            "assets/animatedicons/131706-dice-6.json",
          ),
        ),
      ],
    );
  }
}
