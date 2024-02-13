import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  final double _sliderMin = 50;
  final double _sliderMax = 200;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
         children: [
          Slider.adaptive(
            min: _sliderMin,
            max: _sliderMax,
            value: _sliderValue,
            activeColor: AppTheme.primaryColor, 
            onChanged: _sliderEnabled ? (value) {
              setState(() {
                _sliderValue = value;
              });
            }  : null
          ),

          Checkbox(
            value: _sliderEnabled, 
            onChanged: (value) {
              setState(() {
                _sliderEnabled = value ?? true;
              });
            }
          ),

          CheckboxListTile(
            value: _sliderEnabled, 
            title: const Text("Habilitar Slider"), 
            onChanged: (value) {
              setState(() {
                _sliderEnabled = value ?? true;
              });
          }),

          SwitchListTile.adaptive(
            value: _sliderEnabled,
            title: const Text("Habilitar Slider"),
            activeColor: AppTheme.primaryColor,
            onChanged: (value) {
              setState(() {
                _sliderEnabled = value ?? true;
            });
          }),

          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://static.wikia.nocookie.net/character-stats-and-profiles/images/8/8b/Goku_Dragon_Ball_Z.png/revision/latest?cb=20180513223543'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
         ],
      ),
    );
  }
}