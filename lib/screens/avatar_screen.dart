import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('SL'),
            )
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
         radius: 110,
          backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/67056904?v=4')
        ),
      ),
    );
  }
}