import 'package:flutter/material.dart';
import 'package:practicas/src/pages/homepage.dart';


// ignore: must_be_immutable
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Películas',
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context ) => HomePage()
      },     

    );
  }
  
}
