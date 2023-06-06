import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCalc extends StatefulWidget {
  const MyCalc({super.key});

  @override
  State<MyCalc> createState() => _MyCalcState();
}

class _MyCalcState extends State<MyCalc> {
  String campoUm = '';
  String campoDois = '';
  int resultado = 0;
  double _resultado = 0;
  TextEditingController campoTexto = TextEditingController();
  TextEditingController campoTextoD = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operações"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(15)),
            Text(
              "Operações para aprendizado do uso do Widget TextField",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            TextField(
              controller: campoTexto,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blue[200],
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: 'Digite o valor 1',
              ),
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            TextField(
              controller: campoTextoD,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue[200],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Digite o valor 2'),
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            Row(
              children: [
                SizedBox(height: 75, width: 25),
                ElevatedButton(
                    onPressed: () {
                      double num1 = double.tryParse(campoTexto.text) ?? 0;
                      double num2 = double.tryParse(campoTextoD.text) ?? 0;
                      double resultado = num1 + num2;
                      setState(() {
                        _resultado = resultado;
                      });
                    },
                    child: Text("+")),
                Padding(padding: EdgeInsets.only(right: 15)),
                ElevatedButton(
                    onPressed: () {
                      double num1 = double.tryParse(campoTexto.text) ?? 0;
                      double num2 = double.tryParse(campoTextoD.text) ?? 0;
                      double resultado = num1 - num2;
                      setState(() {
                        _resultado = resultado;
                      });
                    },
                    child: Text("-")),
                Padding(padding: EdgeInsets.only(right: 15)),
                ElevatedButton(
                    onPressed: () {
                      double num1 = double.tryParse(campoTexto.text) ?? 0;
                      double num2 = double.tryParse(campoTextoD.text) ?? 0;
                      double resultado = num1 * num2;
                      setState(() {
                        _resultado = resultado;
                      });
                    },
                    child: Text("*")),
                Padding(padding: EdgeInsets.only(right: 15)),
                ElevatedButton(
                    onPressed: () {
                      double num1 = double.tryParse(campoTexto.text) ?? 0;
                      double num2 = double.tryParse(campoTextoD.text) ?? 0;
                      double resultado = num1 / num2;
                      setState(() {
                        _resultado = resultado;
                      });
                    },
                    child: Text("/")),
                Padding(padding: EdgeInsets.only(right: 15)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _resultado = 0;
                      });
                    },
                    child: Text("CE"))
              ],
            ),
            Text('Resultado: $_resultado')
          ],
        ),
      ),
    );
  }
}
