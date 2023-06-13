// ignore_for_file: public_member_api_docs, sort_constructors_first
class Aluno {
  int _ra = 0;
  String _nome = "";

  Aluno(
     this._ra,
     this._nome,
  );

  get ra => this._ra;

 set ra( value) => this._ra = value;

  get nome => this._nome;

 set nome( value) => this._nome = value;



  @override
  String toString() => 'Aluno(_ra: $_ra, _nome: $_nome)';
}
