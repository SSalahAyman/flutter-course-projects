import 'package:flutter/material.dart';

void main() {
  runApp(BasketballCounterApp());
}

class BasketballCounterApp extends StatefulWidget {
  const BasketballCounterApp({super.key});

  @override
  State<BasketballCounterApp> createState() => _BasketballCounterAppState();
}

class _BasketballCounterAppState extends State<BasketballCounterApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Teams points Counter App",
      home: Counterteam(),
    );
  }
}

class Counterteam extends StatelessWidget {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
    double mywidth = MediaQuery.of(context).size.width;
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Points Counter"),
          backgroundColor: Colors.orange,
        ),
        body: Container(
          width: mywidth,
          height: myheight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: mywidth,
                height: myheight * .08,
                child: Padding(
                  padding: EdgeInsets.only(top: myheight * .02),
                  child: Text(
                    "Lets Count The Points of the teams 🤍",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'pacifico',
                      color: Color(0xff283c5f),
                      fontWeight: FontWeight.w300,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Team A",
                          style: TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Add 1 Point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Add 2 point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Add 3 point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Team B",
                          style: TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Add 1 Point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Add 2 point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Add 3 point",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: myheight * .02,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange, minimumSize: Size(170, 40)),
                child: Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
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
