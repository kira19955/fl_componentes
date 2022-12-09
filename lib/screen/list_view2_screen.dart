import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

    final options = const <String> ['Megaman','MarioBros','Superman', 'Salsa'];
    
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Tipo 2'),
        elevation: 0,  //se quita o eleva la sombra 
        backgroundColor: Colors.indigo, //cambia el color del appbar 
        ),
      body: ListView.separated(  //widget para crear una lista
        itemCount: options.length, //se especifica cuantos datos se mostraran en la lista 
        itemBuilder:(context, index) => ListTile( // sele pasa un widget tipo lista para que los cree
             leading:const Icon(Icons.access_time_sharp, color: Colors.indigo,),
             title: Text(options[index]),
             trailing: const Icon(Icons.arrow_forward_ios_outlined),
             onTap: (){
              final game = options[index];
              print(game);
             },
           ),
        separatorBuilder: (_ , __) => const Divider(),
        )
    );
  }
}