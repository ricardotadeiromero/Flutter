import 'package:exercadcliprod/model/cliente.dart';

class ClienteRepository {
  List<Cliente> _listaCliente = [];
  ClienteRepository();

  void add(Cliente cl) {
    _listaCliente.add(cl);
  }

  void imprimir() {
    for (var cliente in _listaCliente) {
      print(cliente.toString());
    }
  }
}
