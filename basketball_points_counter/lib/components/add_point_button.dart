import 'package:flutter/material.dart';

class Addpointbutton extends StatelessWidget {
  const Addpointbutton(
      {super.key, required this.ontap, required this.buttontext});
  final VoidCallback ontap;
  final String buttontext;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.orange,
        minimumSize: Size(150, 50),
      ),
      onPressed: ontap,
      child: Text(
        buttontext,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }
}
