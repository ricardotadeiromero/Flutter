// ignore_for_file: public_member_api_docs, sort_constructors_first
class Aluno {
  int _ra = 0;
  String _nome = '';
  
  Aluno(
    this._ra,
    this._nome,
  );

  int get ra => this._ra;

  set ra(int value) => this._ra = value;

  get nome => this._nome;

  set nome(value) => this._nome = value;
}
