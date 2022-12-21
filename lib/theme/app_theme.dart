import 'package:flutter/material.dart';

class AppTheam{

  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color Primario
        primaryColor: Colors.indigo,

        //appbar theme
        appBarTheme:const AppBarTheme(
          color: primary,
          elevation: 0,
        )
      ); 
}