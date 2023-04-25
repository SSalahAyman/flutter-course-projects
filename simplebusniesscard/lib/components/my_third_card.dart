import 'package:flutter/material.dart';

class MyThirdCard extends StatelessWidget {
  const MyThirdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            Icons.home,
            color: Color(0xff0f5d9d),
          ),
          Spacer(
            flex: 4,
          ),
          Text(
            "Egypt 30 AbuGhali Street",
            style: TextStyle(fontSize: 20),
          ),
          Spacer(
            flex: 10,
          ),
        ],
      ),
    )

        /**
             * another way for build the third text field

              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Icon(Icons.house, color: Color(0XFF0F5D9D), size: 30),
                      Spacer(
                        flex: 3,
                      ),
                      Text(
                        "Egypt 30 AbuGhali Street",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(flex: 4)
                    ],
                  ),
                ),
              )
     */
        ;
  }
}
