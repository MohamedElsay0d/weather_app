import 'package:flutter/material.dart';

import '../widgets/WeatherData.dart';
import '../widgets/noWeatherData.dart';
import 'searchView.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 223, 199),
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: const [IconButton(onPressed: null, icon: Icon(Icons.search))],
      ),
      body: weather_Model == null ?   const NoWeatherBody() :  WeatherInfoBody(Weather_Model : weather_Model! )
    );
  }
}
