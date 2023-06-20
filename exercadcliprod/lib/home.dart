import 'package:exercadcliprod/model/cliente.dart';
import 'package:exercadcliprod/produto.dart';
import 'package:flutter/material.dart';
import 'package:exercadcliprod/clientePage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _itemClicado(int index) {
    setState(() {
      _indice = index;
    });
    /*switch (index) {
      case 0:
        Navigator.pushNamed(context, '/person');
        break;
      case 1:
        Navigator.pushNamed(context, '/basket');
        break;
      case 2:
        Navigator.pushNamed(context, '/favorite');
        break;
    }*/
  }

  int _indice = 0;
  final List<Widget> _telas = [ClientePage(), ProdutoPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: _telas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indice,
        onTap: _itemClicado,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_rounded), label: 'Cliente'),
          BottomNavigationBarItem(
              icon: Icon(Icons.data_object_rounded), label: 'Produto')
        ],
      ),
    );
  }
}
