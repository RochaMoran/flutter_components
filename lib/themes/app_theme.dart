import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color.fromARGB(255, 53, 122, 55);

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: primaryColor,

    //Appbar Theme
    appBarTheme: const AppBarTheme(
      color: primaryColor
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor
      )
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50))
      )
    ),


    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white
      )
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: primaryColor
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red)
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
       focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
    )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color primario
    primaryColor: primaryColor,

    //Appbar Theme
    appBarTheme: const AppBarTheme(
      color: primaryColor
    ),

     textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor
      )
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50))
      )
    ),

     elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.black
      )
    )
  );
}