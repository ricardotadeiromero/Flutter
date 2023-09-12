import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'model/aluno_repository.dart';
import 'model/aluno.dart';

class MyCadastro extends StatefulWidget {
  const MyCadastro({super.key});

  @override
  State<MyCadastro> createState() => _MyCadastroState();
}

class _MyCadastroState extends State<MyCadastro> {
  int ra = 0;
  String nome = "";
  AlunoRepository rep = AlunoRepository();
  TextEditingController campoRa = TextEditingController();
  TextEditingController campoNome = TextEditingController();

  
  @override
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
            ra = int.parse(campoRa.text);
            nome = campoNome.text;
            Aluno al = Aluno(ra,nome);
            rep.adicionar(al);
            campoNome.clear();
            campoRa.clear();
            setState(() {
              
            });
          }, child: const Text("Cadastar"))
        ],),),
      ),
    );
  }
}