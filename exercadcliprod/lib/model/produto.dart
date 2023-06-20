// ignore_for_file: public_member_api_docs, sort_constructors_first
class Produto {
  int _id = 0;
  String _tipo = '';
  String _nome = '';

  int get id => this._id;

  set id(int value) => this._id = value;

  get tipo => this._tipo;

  set tipo(value) => this._tipo = value;

  get nome => this._nome;

  set nome(value) => this._nome = value;
  Produto(
    this._id,
    this._tipo,
    this._nome,
  );

  @override
  String toString() => 'Produto(_id: $_id, _tipo: $_tipo, _nome: $_nome)';
}
