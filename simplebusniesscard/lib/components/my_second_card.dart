import 'package:flutter/material.dart';

class MySecondCard extends StatelessWidget {
  const MySecondCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            Icons.email,
            color: Color(0xff0f5d9d),
          ),

          // SizedBox(
          //   width: 30,
          // ),

          Padding(
            padding: EdgeInsets.only(left: 32),
            child: Text(
              "Salahayman488@gmail.com",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
