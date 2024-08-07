import 'package:flutter/material.dart';

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
            controller: cityController,
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
