import 'package:dio/dio.dart';
import 'package:weather_app/models/WeatherModel.dart';

class WeatherApiModel {
  Dio dio = Dio();
  WeatherApiModel(this.dio);
  String baseURL = 'https://api.weatherapi.com/v1';
  String apiKey = '318086a77e0148a6bd9214128240708';
  Future<WeatherModel> getCurrentWeather(String cityname) async {
    try {
      Response response = await dio
          .get("$baseURL/forecast.json?key=$apiKey&q=$cityname&days=1");
      WeatherModel weatherModel = WeatherModel.fromJSON(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? "Opps , there was an error";
      throw Exception(errorMessage);
    }
  }
}
