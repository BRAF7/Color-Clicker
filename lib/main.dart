import 'package:flutter/material.dart';

import 'screens/home_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color clicker',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => Home(),
      },
    );
  }
}
