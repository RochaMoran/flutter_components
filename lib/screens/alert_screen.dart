import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          title: const Text("Titulo"),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Contenido de la alerta"),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
             TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text("Cancelar", style: TextStyle(color: Colors.red))
            ),
            TextButton(
              onPressed: () => {}, 
              child: const Text("Aceptar")
            ),
          ],
        );
      }
    );
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text("Titulo"),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Contenido de la alerta"),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
           actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text("Cancelar", style: TextStyle(color: Colors.red))
            ),
            TextButton(
              onPressed: () => {}, 
              child: const Text("Aceptar")
            ),
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context), 
          style: ElevatedButton.styleFrom(
            elevation: 5
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text("Mostrar Alerta", style: TextStyle(fontSize: 20))
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close)
      )
    );
  }
}