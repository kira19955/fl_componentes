import 'package:flutter/material.dart';

import 'package:fl_componentes/screen/screen.dart';




void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home:const ListView2Screen(),
      initialRoute: 'Home',
      routes: {
        'Home':(BuildContext context) => const HomeScreen(),
        'ListView1':(BuildContext context) => const ListView1Screen(),
        'ListView2':(BuildContext context) => const ListView2Screen(),
        'Card':(BuildContext context) => const cardScreen(),
        'Alert':(BuildContext context) => const alertScreen(),
      },
    );
  }
}