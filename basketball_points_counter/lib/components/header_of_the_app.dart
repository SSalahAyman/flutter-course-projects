import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({super.key});
  late double height;

  late double width;
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return Container(
      width: mywidth,
      height: myheight * .08,
      child: Padding(
        padding: EdgeInsets.only(top: myheight * .02),
        child: Text(
          "Lets Count The Points of the teams 🤍",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'pacifico',
            color: Color(0xff283c5f),
            fontWeight: FontWeight.w300,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
