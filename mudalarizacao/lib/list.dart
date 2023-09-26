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
  String busca = "";
  late List<Aluno> listBusca;
  @override

  void atualizaLista(String nome){
    listBusca = List.from(list);
    setState(() {
    listBusca = list.where((element) => (element.nome.toLowerCase().contains(nome.toLowerCase()))).toList();
      
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    listBusca = List.from(list);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista'),
        ),
        body: Column(
          children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250,
                    child: TextField(
                      onChanged: (value) {
                        busca = value;
                        atualizaLista(value);
                      },
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                        labelText: 'Nome',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor:  Color.fromARGB(255, 184, 206, 225),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(listBusca[index].nome[0]),
                      ),
                      title: Text(listBusca[index].nome),
                      subtitle: Text(listBusca[index].ra.toString()),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyEdit(al: listBusca[index]),
                                ),
                              ).then((_) => setState(() {}));
            
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              setState(() {
                                AlunoRepository.del(list[index]);
                                atualizaLista(busca);
                                
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
                  itemCount: listBusca.length),
            ),
          ],
        ));
  }
}
