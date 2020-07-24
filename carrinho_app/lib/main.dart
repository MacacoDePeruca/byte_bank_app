import 'package:chimpazilla/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carrinho App',
      theme: ThemeData(
        fontFamily: 'Google',
        primarySwatch: Colors.orange,
      ),
      home: homePage(),
    );
  }
}


