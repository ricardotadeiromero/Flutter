import 'package:exercadcliprod/model/produto.dart';

class ProdutoRepository {
  List<Produto> _listaProduto = [];
  ProdutoRepository();

  void add(Produto pd) {
    _listaProduto.add(pd);
  }

  void imprimir() {
    for (var prod in _listaProduto) {
      print(prod.toString());
    }
  }
}
