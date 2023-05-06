import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class RollDicer extends StatefulWidget {
  const RollDicer({super.key});

  @override
  State<RollDicer> createState() => _RollDicerState();
}

class _RollDicerState extends State<RollDicer> {
  var currentDiceRoll = 2;

  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Image.asset(
          "assets/dice-images/dice-$currentDiceRoll.png",
          width: width * 0.4,
        ),
        SizedBox(
          height: height * 0.04,
        ),

        /**
           * Roll Dice Button
           */
        TextButton(
          onPressed: () {
            setState(() {
              currentDiceRoll = randomizer.nextInt(6) + 1;
            });
          },
          style: TextButton.styleFrom(foregroundColor: Colors.grey),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: width * 0.02),
                child: const Text(
                  "Roll Dice",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Image.asset(
                "assets/icons/click1.png",
                width: width * 0.08,
              )
            ],
          ),
        )
      ],
    );
  }
}
