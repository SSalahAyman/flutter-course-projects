class WeatherModel {
  String? date;
  double? temp;
  double? maxTemp;
  double? minTemp;
  String? weatherStateName;

  WeatherModel(
      {required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      this.weatherStateName});

  /*
       * named constructor (fromJson) is specalized to build the object from Weathermodel class with data get from API
      */
  WeatherModel.fromJson(dynamic data) {
    var jsonData = data["forecast"]["forecastday"][0]["day"];
    date = data["location"]["localtime"];
    temp = jsonData["avgtemp_c"];
    maxTemp = jsonData["maxtemp_c"];
    minTemp = jsonData["mintemp_c"];
    weatherStateName =
        data["forecast"]["forecastday"][2]["day"]["condition"]["text"];
  }

  /*
   * this method used to when I need to print the data of all fields of an object from WeatherModel
  */
  @override
  String toString() {
    // TODO: implement toString
    return "date =$date avgTemp=$temp maxTemp=$maxTemp minTemp=$minTemp weatherStateName=$weatherStateName";
  }
}
