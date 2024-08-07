import 'package:flutter/material.dart';

import '../widgets/noWeatherData.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: const [IconButton(onPressed: null, icon: Icon(Icons.search))],
      ),
      body: const NoWeatherBody(),
    );
  }
}
