// ignore_for_file: deprecated_member_use

import 'package:clothes_app_starter/screens/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: Color(0xFFFAFAFA),
      primaryColor: Color(0xFFFFBD00),
      accentColor: Color(0xFFFFEBC7),
      ),
      home: HomePage(),
    );
  }
}
