import 'package:flutter/material.dart';
import 'package:mudalarizacao/cadastro.dart';
import 'package:mudalarizacao/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyCadastro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const MyCadastro(),
        '/list' : (context) => const MyList()
      },
    );
  }
}

