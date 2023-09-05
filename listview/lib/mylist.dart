import 'package:flutter/material.dart';

import 'aluno.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {

  List<Aluno> lista = [
    Aluno(201605,"Ricardo"),
    Aluno(201606, "Joãozinho cria")
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de List View'),
      ),
      body: ListView.separated(
        separatorBuilder:(_,__)=> const Divider(thickness: 2,),
        itemBuilder: (BuildContext context,int index){
          return ListTile(
            leading: Text(lista[index].ra.toString()),
            title: Text(lista[index].nome),
          );
        },
        itemCount: lista.length)
    );
  }
}