import 'package:flutter/material.dart';

import 'model/aluno.dart';

class MyEdit extends StatefulWidget {
  Aluno al;
  MyEdit({super.key, required this.al});

  @override
  State<MyEdit> createState() => _MyEditState();
}

class _MyEditState extends State<MyEdit> {
  TextEditingController campoRa = TextEditingController();
  TextEditingController campoNome = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    campoNome.text = widget.al.nome;
    campoRa.text = widget.al.ra.toString();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/list');
          }, icon: const Icon(Icons.list_alt_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Column(children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'RA'
            ),
            controller: campoRa,
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Nome'
            ),
            controller: campoNome,
          ),
          ElevatedButton(onPressed: () {
            widget.al.nome = campoNome.text;            
            widget.al.ra = int.parse(campoRa.text);
            Navigator.pop(context);            
          }, child: const Text("Alterar"))
        ],),),
      ),
    );
  }
}