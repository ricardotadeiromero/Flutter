import 'package:exercicio_portifolio/contador.dart';
import 'package:exercicio_portifolio/jogador.dart';
import 'package:exercicio_portifolio/jogadores.dart';
import 'package:exercicio_portifolio/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indice = 0;

  List<Widget> _telas = [Jogador(), ContadorPage(), Info()];

  void _itemClicado(int index) {
    setState(() {
      _indice = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _telas[_indice],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indice,
          onTap: _itemClicado,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer), label: "Jogador"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate), label: "Contador"),
            BottomNavigationBarItem(
                icon: Icon(Icons.info), label: "Informações")
          ],
        ));
  }
}
