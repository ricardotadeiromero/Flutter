import 'package:flutter/material.dart';
import 'package:textform_forms/my_texto.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Formulário',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyTexto(),
    );
  }
}

