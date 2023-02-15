import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String? text;
  Color? color;
  VoidCallback? ontap;
  // late double width;
  // late double height;

  Category({this.text, this.color, this.ontap});

  @override
  Widget build(BuildContext context) {
    // width = MediaQuery.of(context).size.width;
    // height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          ontap;
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.09,
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
      ),
    );
  }
}
