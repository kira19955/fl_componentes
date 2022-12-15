import 'package:flutter/material.dart' show IconData,Widget;

class MenuOptions{

  final String router;
  final IconData icon; 
  final String name;
  final Widget screen;

  MenuOptions({
   required this.router,
   required  this.icon,
   required   this.name,
   required    this.screen
       });

}