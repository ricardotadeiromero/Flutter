import 'package:exercadcliprod/model/Repository/cliente_repository.dart';
import 'package:exercadcliprod/model/Repository/produto_repository.dart';
import 'package:exercadcliprod/model/cliente.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class ClientePage extends StatefulWidget {
  const ClientePage({super.key});

  @override
  State<ClientePage> createState() => _ClientePageState();
}

class _ClientePageState extends State<ClientePage> {
  ClienteRepository clirep = ClienteRepository();
  TextEditingController campoNome = TextEditingController();
  TextEditingController campoNumero = TextEditingController();
  TextEditingController campoCNPJ = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MainContainerSaldo(
      input: Column(
        children: [
          TextField(
            controller: campoNome,
            decoration: InputDecoration(
              hintText: 'Nome',
              floatingLabelBehavior: FloatingLabelBehavior.auto,
            ),
          ),
          TextField(
            controller: campoNumero,
            decoration: InputDecoration(
              hintText: 'Número',
              floatingLabelBehavior: FloatingLabelBehavior.auto,
            ),
          ),
          TextField(
            controller: campoCNPJ,
            decoration: InputDecoration(
              hintText: 'CNPJ',
              floatingLabelBehavior: FloatingLabelBehavior.auto,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                Cliente cli = Cliente(campoNome.text,
                    int.parse(campoNumero.text), int.parse(campoCNPJ.text));
                clirep.add(cli);
                clirep.imprimir();
                campoCNPJ.clear();
                campoNome.clear();
                campoNumero.clear();
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
