import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 2'),
      ),
      body: ListView(
        children: [
          ...options.map(
            (option) => ListTile(
              title: Text(option),
              trailing: const Icon(Icons.arrow_forward_ios),
            )
          ).toList(),
        ],
      ),
    );
  }
}