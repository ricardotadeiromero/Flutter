import 'package:flutter/material.dart';
import 'package:mudalarizacao/model/aluno.dart';
import 'package:mudalarizacao/model/aluno_repository.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List<Aluno> list = AlunoRepository.get;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: []),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(list[index].nome[0]),
                ),
                title: Text(list[index].nome),
                subtitle: Text(list[index].ra.toString()),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      AlunoRepository.del(list[index]);
                    });
                  },
                ),
              );
            },
            separatorBuilder: (_, __) => Divider(
                  thickness: 2,
                ),
            itemCount: list.length));
  }
}
