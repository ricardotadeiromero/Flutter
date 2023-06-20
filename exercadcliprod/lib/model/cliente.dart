// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cliente {
  String _nome = '';
  int _numero = 0;
  int _CNPJ = 0;
  String get nome => this._nome;

  set nome(String value) => this._nome = value;

  get numero => this._numero;

  set numero(value) => this._numero = value;

  get CNPJ => this._CNPJ;

  set CNPJ(value) => this._CNPJ = value;

  Cliente(
    this._nome,
    this._numero,
    this._CNPJ,
  );

  @override
  String toString() =>
      'Cliente(_nome: $_nome, _numero: $_numero, _CNPJ: $_CNPJ)';
}
