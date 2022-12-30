import 'package:flutter/material.dart';
import 'package:fl_componentes/theme/app_theme.dart';

class cardScreen extends StatelessWidget {
   
  const cardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body:ListView(
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
            Card(
              child: Column(
                children: const[
                    ListTile(
                      leading: Icon(Icons.photo_album_outlined, color: AppTheam.primary),
                      title: Text('soy un titulo'),
                      subtitle: Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.'),
                    )
                ],
              ),
            )
        ],
      )
    );
  }
}