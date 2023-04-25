import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:simplebusniesscard/components/my%20_profile_image.dart';
import 'package:simplebusniesscard/components/my_first_card.dart';
import 'package:simplebusniesscard/components/my_second_card.dart';
import 'package:simplebusniesscard/components/my_third_card.dart';

class Busniesscard extends StatelessWidget {
  const Busniesscard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: "BusniessCard",
      home: Scaffold(
        body: Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: const [
              SizedBox(height: 50),

              /**
               * My profile image
               */
              MyProfileImage(),
              //--------------------------------------------------------------------------------------//

              Text(
                "Salah ayman",
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontFamily: "pacifico",
                    fontSize: 38),
              ),
              Text(
                "Flutter Devoloper 👨‍💻📲",
                style: TextStyle(
                    color: Color(0xff283c5f),
                    fontWeight: FontWeight.bold,
                    fontFamily: "pacifico",
                    fontSize: 18),
              ),
              Divider(
                color: Color(0xff6c8090),
                thickness: 2,
                indent: 60,
                endIndent: 60,
                height: 5,
              ),

              /**
               * My first card
               */
              MyFirstCard(),

              /**
               * My second card
               */
              MySecondCard(),

              /**
               * My third card
               */
              MyThirdCard(),
            ],
          ),
        ),
      ),
    );
  }
}
