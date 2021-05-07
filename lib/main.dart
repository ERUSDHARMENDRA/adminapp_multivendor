import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shapeyou_admin/screens/login_screen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop4ShapeYou Admin DashBoard',
      theme: ThemeData(
        primaryColor: Color(0xFF995F06),
      ),
      home: LoginScreen(),
    );
  }
}

