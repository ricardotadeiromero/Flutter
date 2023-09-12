import 'package:flutter/material.dart';
import 'package:mudalarizacao/model/aluno.dart';
import 'package:mudalarizacao/model/aluno_repository.dart';

import 'edit.dart';

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
        appBar: AppBar(
          title: Text('Lista'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(list[index].nome[0]),
                ),
                title: Text(list[index].nome),
                subtitle: Text(list[index].ra.toString()),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyEdit(al: list[index]),
                          ),
                        ).then((_) => setState(() {}));

                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          AlunoRepository.del(list[index]);
                        });
                      },
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (_, __) => Divider(
                  thickness: 2,
                ),
            itemCount: list.length));
  }
}
