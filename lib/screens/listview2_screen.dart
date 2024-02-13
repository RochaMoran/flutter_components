import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Listview2 tipo 1'),
      ),
      body: ListView.separated(
       itemBuilder: (_, i) => ListTile(
         title: Text(options[i]),
         trailing: const Icon(Icons.arrow_forward_ios),
         onTap: () {
          final option = options[i];
          print(option);
         },
       ),
       separatorBuilder: (_, __) => const Divider(),
       itemCount: options.length,
      ),
    );
  }
}