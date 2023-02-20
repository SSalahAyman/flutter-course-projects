import 'package:flutter/material.dart';
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
          Container(
            width: width,
            height: height * 0.11,
            color: const Color(0xfff99430),
            child: Row(
              children: [
                Container(
                  width: width * 0.23,
                  height: height * 0.111,
                  color: const Color(0xfffff4db),
                  child: Image.asset("assets/images/numbers/number_one.png"),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.03),
                      child: const Text(
                        "ichi",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.03),
                      child: const Text(
                        "one",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(right: width * 0.03),
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 29,
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
