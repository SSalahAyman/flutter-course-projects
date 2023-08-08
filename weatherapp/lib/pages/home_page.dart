import 'package:flutter/material.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/pages/search_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  static late double width;
  static late double height;
  WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SearchPage();
                    },
                  ));
                },
                icon: Icon(Icons.search),
              )
            ],
            backgroundColor: Colors.blue,
            title: const Text(
              "Weather App",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: weatherData != null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.03),
                      child: const Text(
                        "there is no weather 😔 start",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: const Text(
                        "Searching now 🔎",
                        style: TextStyle(fontSize: 30),
                      ),
                    )
                  ],
                )
              : Container(
                  color: Colors.orange,
                  width: width,
                  height: height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        "Cairo",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "updated :12-8-2020",
                        style: TextStyle(fontSize: 22),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/clear.png"),
                          Text(
                            "30",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          Column(
                            children: [
                              Text("maxTemp :30"),
                              Text("minTemp :30"),
                            ],
                          )
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "Clear",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      Spacer(
                        flex: 4,
                      ),
                    ],
                  ),
                )),
    );
  }
}
