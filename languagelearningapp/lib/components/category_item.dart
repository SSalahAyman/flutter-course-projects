import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String? text;
  final Color? color;
  final VoidCallback? ontap;
  static late double width;
  static late double height;

  const Category({this.text, this.color, this.ontap});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        height: height * 0.1,
        color: color,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        alignment: Alignment.centerLeft,
        padding:
            EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04),
      ),
    );
  }
}
