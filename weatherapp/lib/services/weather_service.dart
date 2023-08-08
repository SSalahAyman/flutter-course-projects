import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weatherapp/models/weather_model.dart';

class WeatherService {
  Future<WeatherModel> getWeather({required String cityName}) async {
    String baseUrl = "http://api.weatherapi.com/v1";
    String apiKey = "21b09eed350b40f09e4185207232206";
    Uri url = Uri.parse(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7&aqi=no&alerts=no');
    http.Response response = await http.get(url);

    Map<String, dynamic> data = jsonDecode(response.body);

    // WeatherModel weather = WeatherModel(
    //   date: data["location"]["localtime"],
    //   temp: data["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
    //   maxTemp: data["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
    //   minTemp: data["forecast"]["forecastday"][0]["day"]["mintemp_c"],
    //   weatherStateName: data["forecast"]["forecastday"][2]["day"]["condition"]
    //       ["text"],
    // );

    /**
     * the object weather is build here direct from named constructor that is speclized to get the data from API
     * ,And when we build object that give the paramter of constructor the API data (endpoint data)
     */
    WeatherModel weather = WeatherModel.fromJson(data);

    return weather;
  }
}
