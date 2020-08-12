import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practicas/src/providers/movies.provider.dart';
import 'package:practicas/src/widgets/card.widget.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 30);
  final estiloTexto2 = new TextStyle(fontSize: 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Películas'),
            backgroundColor: Colors.indigoAccent,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.account_circle), onPressed: () {})
            ]),
        body: Container(
            child: Column(children: <Widget>[_swiperCards('now_playing')])));
  }
}

Widget _swiperCards(String type) {
  final moviesProvider = new MoviesProvider();
  return FutureBuilder(
      future: moviesProvider.getMovie(type: type),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          return new CardWidget(
            peliculas: snapshot.data,
            height: 0.5,
            width: 0.7,
          );
        } else {
          return Container(child: Center(child: CircularProgressIndicator()));
        }
      });
}
