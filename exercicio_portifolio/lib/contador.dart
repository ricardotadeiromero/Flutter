import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int _counter = 0;
  TextStyle style = TextStyle(fontSize: 20, fontWeight: FontWeight.w300);

  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter>10){
        style = TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.w500);
      } if(_counter>20){
        style = TextStyle(color: Color.fromARGB(255, 253, 0, 139), fontSize: 50, fontWeight: FontWeight.w800);
      } if(_counter<10){
        style = style = TextStyle(fontSize: 20, fontWeight: FontWeight.w300);
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      if (_counter <= 0) {
        _counter = 0;
      }
      if(_counter>10){
        style = TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.w500);
      } if(_counter>20){
        style = TextStyle(color: Color.fromARGB(255, 253, 0, 139), fontSize: 50, fontWeight: FontWeight.w800);
      } if(_counter<10){
        style = style = TextStyle(fontSize: 20, fontWeight: FontWeight.w300);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 200,
                child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/1875/1875536.png'),
              ),
              const SizedBox(height: 30),
              const Text(
                'Contador usando Stateful Widget',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: _decrementCounter,
                    tooltip: 'Increment',
                    child: const Icon(Icons.remove),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(210, 139, 202, 238)),
                    width: 70,
                    height: 70,
                    alignment: Alignment.center,
                    child: Text(
                      '$_counter',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    onPressed: _incrementCounter,
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text('Valor do contador: $_counter',
                  style: style)
            ],
          ),
        )
      );
  }
}