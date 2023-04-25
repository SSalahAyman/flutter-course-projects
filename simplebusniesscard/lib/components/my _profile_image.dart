import 'package:flutter/material.dart';

class MyProfileImage extends StatelessWidget {
  const MyProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 130,
      backgroundColor: Color(0XFF7a93cd),
      child: CircleAvatar(
        backgroundImage: AssetImage("images/salah.jpg"),
        radius: 125,
      ),
    );
  }
}
