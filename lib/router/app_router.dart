
import 'package:flutter/material.dart';

import 'package:fl_componentes/models/models.dart';
import 'package:fl_componentes/screen/screen.dart';

class AppRouters{

  static const initialRouter = 'Home';

  static final menuOptions = <MenuOptions>[
    //Todo: borrar home

        MenuOptions(router: 'Home', icon: Icons.home , name: 'Home Screen', screen: const HomeScreen()),
        MenuOptions(router: 'ListView1', icon: Icons.list , name: 'List Vieew 1', screen: const ListView1Screen()),
        MenuOptions(router: 'ListView2', icon: Icons.list_alt_rounded , name: 'Lis view 2', screen: const ListView2Screen()),
        MenuOptions(router: 'Card', icon: Icons.card_giftcard , name: 'Card', screen: const cardScreen()),
        MenuOptions(router: 'Alert', icon: Icons.add_alert_rounded , name: 'Alerta', screen: const alertScreen()),
        
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoters(){

    Map<String, Widget Function(BuildContext)> appRoters = {};

      for(final option in menuOptions){
        appRoters.addAll({option.router : (BuildContext context) => option.screen});
      }

    return appRoters;
  }

  //  static Map<String, Widget Function(BuildContext)> routes = {
  //       'Home':(BuildContext context) => const HomeScreen(),
  //       'ListView1':(BuildContext context) => const ListView1Screen(),
  //       'ListView2':(BuildContext context) => const ListView2Screen(),
  //       'Card':(BuildContext context) => const cardScreen(),
  //       'Alert':(BuildContext context) => const alertScreen(),
  //  }; 
}