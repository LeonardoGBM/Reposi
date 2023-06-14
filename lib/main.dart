import 'package:menu/home_page.dart';
import 'package:menu/inicio.dart';
import 'package:menu/login_page.dart';
import 'package:menu/nav_bar.dart';
import 'package:menu/otra_page.dart';
import 'package:menu/servicios.page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: {
        "/":(context) => Inicio(),
        "/home":(context) => HomePage(),
        "/login":(context) => LoginPage(),
        "/otra":(context) => OtraPage(),
        "/registro":(context) => ServiciosPage(),

      },
    );
  }
}