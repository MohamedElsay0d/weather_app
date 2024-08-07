import 'package:dio/dio.dart';
import 'package:weather_app/models/WeatherModel.dart';

class WeatherApiModel {
  Dio dio = Dio();

  Future<WeatherModel> getCurrentWeather(String cityname) async {
    cityname = capitalize(cityname);
    Response response = await dio.get(
        "https://api.weatherapi.com/v1/forecast.json?key=318086a77e0148a6bd9214128240708&q=$cityname&days=1");
    WeatherModel weatherModel = WeatherModel.fromJSON(response.data);
    return weatherModel;
  }
}

capitalize(String str) {
  if (str.isEmpty) {
    return str;
  } else {
    return "${str[0].toUpperCase()}${str.substring(1)}";
  }
}
