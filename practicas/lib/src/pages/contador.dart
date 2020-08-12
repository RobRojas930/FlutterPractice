import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Contador extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 30);
  final estiloTexto2 = new TextStyle(fontSize: 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text('Número de Clicks',style: estiloTexto),
            Text('0', style:estiloTexto2),
          ]
      )
      ),
      floatingActionButton: new FloatingActionButton(
        child:Icon(Icons.access_alarm),
        onPressed: ()=> "",
      ),
    );
  }
}