import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

    final options = const <String> ['Megaman','MarioBros','Superman', 'Salsa'];
    
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Tipo 2'),
        elevation: 0,
        backgroundColor: Colors.indigo,
        ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder:(context, index) => ListTile(
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