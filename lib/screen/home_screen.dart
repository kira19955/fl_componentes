import 'package:flutter/material.dart';
import 'package:fl_componentes/router/app_router.dart';
import 'package:fl_componentes/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Componentes de Flutter"),
        //elevation: 0,
      ),

      /*se crea un listview para mostrar los archivos en lista
      y se le agrega un icono*/

      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading:Icon(AppRouters.menuOptions[index].icon,color:AppTheam.primary),
          title: Text(AppRouters.menuOptions[index].name),
          onTap: (){
              /*final router = MaterialPageRoute(builder:(context) => const ListView1Screen() );
              Navigator.push(context, router); */


              Navigator.pushNamed(context, AppRouters.menuOptions[index].router);


          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: AppRouters.menuOptions.length),
    );
  }
}