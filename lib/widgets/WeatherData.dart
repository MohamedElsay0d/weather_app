import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/models/WeatherModel.dart';
import 'package:weather_app/views/searchView.dart';

class WeatherInfoBody extends StatelessWidget {
  WeatherModel Weather_Model;
  WeatherInfoBody({Key? key, required this.Weather_Model}) : super(key: key);

  String time = weather_Model!.date.substring(weather_Model!.date.length - 5);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Weather_Model.cityname,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Text(
            'updated at $time',
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                weather_Model!.image!,
              ),
              Text(
                '${weather_Model!.temp}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
               Column(
                children: [
                  Text(
                    'Maxtemp: ${weather_Model!.maxTemp}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Mintemp: ${weather_Model!.minTemp}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
           Text(
            weather_Model!.condition,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}
