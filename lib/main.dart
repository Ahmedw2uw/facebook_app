import 'package:facebook_app/home_screen.dart';
import 'package:facebook_app/login_screen.dart';
import 'package:facebook_app/splach_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        SplachScreen.routeName: (context) => SplachScreen(),
        LoginScreen.routeName: (context) =>  LoginScreen(),
        HomeScreen.routeName:(context)=> HomeScreen(),
      },
    );
  }
}
