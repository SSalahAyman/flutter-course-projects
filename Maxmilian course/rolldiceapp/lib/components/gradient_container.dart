import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rolldiceapp/components/gradient_container_components/header_of_the_page.dart';
import 'package:rolldiceapp/roll_dicer.dart';

const startAlignment = Alignment.bottomLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // color1,color2 in the constructor is positional arguments so that cannot be null ,
  // or if this two colors are named parmeters >> its be optinal and can be null so the const must be removed from the constructor
  // because the const  , the values must be intialized and with optional the values can be a null or with a value

  GradientContainer(this.color1, this.color2, {super.key});

  static late double width;
  static late double height;

  final Color color1;
  final Color color2;

  var activeDiceImage = "assets/dice-images/dice-1.png";

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [color1, color2],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //-------------------------------------------------------------------------------------------------------//
          /**
           * Page Header
           */
          PageHeader(),
          SizedBox(
            height: height * 0.03,
          ),

          /**
           * Roll Dicer (image and button)
           */
          RollDicer(),
        ],
      ),
    );
  }
}
