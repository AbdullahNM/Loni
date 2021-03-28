import 'package:flutter/material.dart';


import 'package:loni_ledger/Registration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Nunito', scaffoldBackgroundColor: Colors.white),
      home: Registration(),
    );
  }
}
