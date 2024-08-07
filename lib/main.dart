import 'package:flutter/material.dart';

import 'views/homepage.dart';
import 'views/searchView.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomeView() , 
      routes: {
        "search" : (context) => SearchView()
      },
      )
    ;
  }
}
