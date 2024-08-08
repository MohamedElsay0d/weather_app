import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../Services/WeatherApiModel.dart';
import '../models/WeatherModel.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});

  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search City'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              weather_Model =
                  await WeatherApiModel(Dio()).getCurrentWeather(value);
              Navigator.of(context).pop();
            },
            decoration: InputDecoration(
                hintText: "Enter name of city",
                hintStyle: const TextStyle(fontSize: 25, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(25)),
                suffixIcon: const IconButton(
                    onPressed: null, icon: Icon(Icons.search))),
          ),
        ),
      ),
    );
  }
}

WeatherModel? weather_Model;
