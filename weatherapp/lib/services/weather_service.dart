import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherService {
  void getWeather({required String cityName}) async {
    String baseUrl = "http://api.weatherapi.com/v1";
    String apiKey = "21b09eed350b40f09e4185207232206";
    Uri url = Uri.parse(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7&aqi=no&alerts=no');
    http.Response response = await http.get(url);
    print(response.body);
  }
}
