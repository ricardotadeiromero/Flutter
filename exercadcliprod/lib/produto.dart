import 'package:exercadcliprod/model/Repository/produto_repository.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'model/produto.dart';
import 'package:flutter/material.dart';

class ProdutoPage extends StatefulWidget {
  const ProdutoPage({super.key});

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  ProdutoRepository prodrep = ProdutoRepository();
  TextEditingController campoId = TextEditingController();
  TextEditingController campoNome = TextEditingController();
  TextEditingController campoTipo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MainContainerSaldo(
      input: Column(
        children: [
          TextField(
            controller: campoId,
            decoration: InputDecoration(
              hintText: 'ID',
              floatingLabelBehavior: FloatingLabelBehavior.auto,
            ),
          ),
          TextField(
            controller: campoNome,
            decoration: InputDecoration(
              hintText: 'Nome',
              floatingLabelBehavior: FloatingLabelBehavior.auto,
            ),
          ),
          TextField(
            controller: campoTipo,
            decoration: InputDecoration(
              hintText: 'Tipo',
              floatingLabelBehavior: FloatingLabelBehavior.auto,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                Produto prod = Produto(
                    int.parse(campoId.text), campoTipo.text, campoNome.text);
                prodrep.add(prod);
                prodrep.imprimir();
                campoId.clear();
                campoNome.clear();
                campoTipo.clear();
              },
              child: Text('Cadastrar'))
        ],
      ),
    );
  }
}

class MainContainerSaldo extends StatelessWidget {
  Widget? input;
  MainContainerSaldo({super.key, this.input});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 100),
          padding: EdgeInsets.only(
              left: 15,
              right: 15,
              bottom: MediaQuery.of(context).size.height * 0.02),
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: input,
        ));
  }
}
