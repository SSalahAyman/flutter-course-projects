import 'package:flutter/material.dart';
import 'package:languagelearningapp/components/item.dart';
import 'package:languagelearningapp/models/number.dart';

class Numberspage extends StatelessWidget {
  const Numberspage({super.key});
  static late double width;
  static late double height;
  final Number one = const Number(
      image: "assets/images/numbers/number_one.png",
      enName: "one",
      jpName: "ichi");
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers"),
        backgroundColor: Color(0xff46322B),
      ),
      body: Container(
        height: height,
        width: width,
        child: Column(children: [
          Item(number: one),
          Item(number: one),
        ]),
      ),
    );
  }
}
