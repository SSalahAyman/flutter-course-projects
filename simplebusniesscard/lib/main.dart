import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(Busniesscardapp());
}

class Busniesscardapp extends StatelessWidget {
  const Busniesscardapp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BusniessCard",
      home: Scaffold(
        body: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 50),
              CircleAvatar(
                radius: 130,
                backgroundColor: Color(0XFF7a93cd),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/salah.jpg"),
                  radius: 125,
                ),
              ),
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

              /// first text field
              Card(
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
              ),

              /// second text field
              Container(
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
              ),

              /// third text field
              Container(
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

              /*
              another way for build the third text field

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
            ],
          ),
        ),
      ),
    );
  }
}
