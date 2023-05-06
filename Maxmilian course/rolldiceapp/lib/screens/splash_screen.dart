import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rolldiceapp/screens/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static late double width;
  static late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: AnimatedSplashScreen(
        /**
           *time in mill seconds
       */
        duration: 2600,

        /**
         * Fade Animation Duration
       */
        animationDuration: Duration(seconds: 1),
        splashIconSize: height,
        splash: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            // color: Color.fromARGB(172, 188, 190, 190)
            image: DecorationImage(
                image: AssetImage("assets/photos/bg_splashhh.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: width,
                height: height * 0.5,
                child: Lottie.asset(
                  width: width * 0.5,
                  fit: BoxFit.cover,
                  "assets/animatedicons/93967-dice-roll-8zen.json",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: height * 0.05),
                child: Text(
                  "Roll Dice App 🎲",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Pacifico"),
                ),
              ),
            ],
          ),
        ),
        nextScreen: HomePage(),
      ),
    );
  }
}
