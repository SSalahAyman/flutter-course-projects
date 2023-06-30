import 'package:flutter/material.dart';
import 'package:weatherapp/services/weather_service.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  late String cityName;
  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Search a city",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.search),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                label: const Text("Search"),
                hintText: "Enter City Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              onSubmitted: (data) {
                cityName = data;
                WeatherService weather = new WeatherService();
                weather.getWeather(cityName: cityName);
              },
            ),
          ),
        ),
      ),
    );
  }
}
