import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 15),
          CustomCardType2(imageUrl: "https://picsum.photos/250?image=9", name: "Una computadora"),
          SizedBox(height: 15),
          CustomCardType2(imageUrl: "https://picsum.photos/250?image=10", name: "Un paisaje"),
          SizedBox(height: 15),
          CustomCardType2(imageUrl: "https://picsum.photos/250?image=11"),
        ],
      )
    );
  }
}
