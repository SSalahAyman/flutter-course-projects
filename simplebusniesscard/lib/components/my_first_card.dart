import 'package:flutter/material.dart';

class MyFirstCard extends StatelessWidget {
  const MyFirstCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
      margin: EdgeInsetsDirectional.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      child: ListTile(
        leading: Icon(
          Icons.phone,
          color: Color(0xff0f5d9d),
          size: 30,
        ),
        title: Text(
          "(+20) 01145606447",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
