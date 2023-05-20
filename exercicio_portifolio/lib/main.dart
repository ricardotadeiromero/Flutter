import 'package:exercicio_portifolio/contador.dart';
import 'package:exercicio_portifolio/home.dart';
import 'package:exercicio_portifolio/jogador.dart';
import 'package:exercicio_portifolio/info.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        '/jogador': (context) => Jogador(),
        '/contador': (context) => ContadorPage(),
        '/info': (context) => Info()
      },
    );
  }
}
