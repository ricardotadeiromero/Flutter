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
        title: Text('Cadastro'),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/list');
          }, icon: Icon(Icons.list_alt_outlined))
        ],
      ),
      body: Center(child: Column(children: [
        TextField(
          controller: campoRa,
        ),
        TextField(
          controller: campoNome,
        ),
        ElevatedButton(onPressed: () {
          ra = int.parse(campoRa.text);
          nome = campoNome.text;
          Aluno al = Aluno(ra,nome);
          rep.adicionar(al);
          rep.imprimir();
          setState(() {
            
          });
        }, child: Text("Cadastar"))
      ],),),
    );
  }
}