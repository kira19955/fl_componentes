import 'package:flutter/material.dart';
import 'package:fl_componentes/screen/screen.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Componentes de Flutter"),
        elevation: 0,
      ),

      /*se crea un listview para mostrar los archivos en lista
      y se le agrega un icono*/

      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading:const Icon(Icons.access_time_filled_outlined),
          title: const Text('nombre de ruta'),
          onTap: (){
              /*final router = MaterialPageRoute(builder:(context) => const ListView1Screen() );
              Navigator.push(context, router); */


              Navigator.pushNamed(context, 'Card');


          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: 10),
    );
  }
}