import 'package:basketball_points_counter/components/add_point_button.dart';
import 'package:basketball_points_counter/components/header_of_the_app.dart';
import 'package:basketball_points_counter/components/reset_button.dart';
import 'package:flutter/material.dart';

class Counterteam extends StatefulWidget {
  @override
  State<Counterteam> createState() => _CounterteamState();
}

class _CounterteamState extends State<Counterteam> {
  late double height;

  late double width;

  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Points Counter"),
          backgroundColor: Colors.orange,
        ),
        body: Container(
          width: mywidth,
          height: myheight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /**
               * Header of the App
               */
              Header(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,

                    /**
                     * Section of Team A
                     */
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "$teamApoints",
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        Addpointbutton(
                          buttontext: "Add 1 Point",
                          ontap: () {
                            setState(() {
                              teamApoints++;
                            });
                          },
                        ),
                        Addpointbutton(
                          buttontext: "Add 2 Point",
                          ontap: () {
                            setState(() {
                              teamApoints += 2;
                            });
                          },
                        ),
                        Addpointbutton(
                          buttontext: "Add 3 Point",
                          ontap: () {
                            setState(
                              () {
                                teamApoints += 3;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  /**
                 * Vertical Divider
                 */
                  Container(
                    height: 500,
                    child: const VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 500,

                    /**
                     * Section of Team B
                     */
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "$teamBpoints",
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        Addpointbutton(
                          buttontext: "Add 1 Point",
                          ontap: () {
                            setState(() {
                              teamBpoints++;
                            });
                          },
                        ),
                        Addpointbutton(
                          buttontext: "Add 2 Point",
                          ontap: () {
                            setState(() {
                              teamBpoints += 2;
                            });
                          },
                        ),
                        Addpointbutton(
                          buttontext: "Add 3 Point",
                          ontap: () {
                            setState(() {
                              teamBpoints += 3;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: myheight * .02,
              ),

              /**
               * Reset button
               */
              ResetButton(
                ontap: () {
                  setState(() {
                    teamApoints = 0;
                    teamBpoints = 0;
                  });
                },
              ),
              SizedBox(
                height: myheight * .1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
