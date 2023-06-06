import 'package:flutter/material.dart';

class MyInicio extends StatelessWidget {
  const MyInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Operações e Conversões"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Calculadora');
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
    );
    
  }
}