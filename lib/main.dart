//import 'package:fl_componentes/screen/screen.dart';
import 'package:flutter/material.dart';


import 'package:fl_componentes/router/app_router.dart';
import 'package:fl_componentes/theme/app_theme.dart';

//Archivo principal en donde se importan las demas clases


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home:const ListView2Screen(),
      initialRoute: AppRouters.initialRouter,
      routes: AppRouters.getAppRoters(),
      theme: AppTheam.lightTheme,
      //theme:
       /* ThemeData.dark().copyWith(
      //Color Primario
        primaryColor: Colors.indigo,

        //appbar theme
        appBarTheme:const AppBarTheme(
          color: Colors.indigo,
          elevation: 0,
        )
      ),  */
      /* routes: {
        'Home':(BuildContext context) => const HomeScreen(),
        'ListView1':(BuildContext context) => const ListView1Screen(),
        'ListView2':(BuildContext context) => const ListView2Screen(),
        'Card':(BuildContext context) => const cardScreen(),
        'Alert':(BuildContext context) => const alertScreen(),
      }, */
    );
  }
}