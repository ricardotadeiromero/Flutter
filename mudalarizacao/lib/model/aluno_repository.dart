// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'aluno.dart';

class AlunoRepository {
  static List<Aluno> _listaAlunos = [];

  static get get => _listaAlunos;

  set set(value) => _listaAlunos = value;

  AlunoRepository();

  void adicionar(Aluno al) {
    _listaAlunos.add(al);
  }

  static void del(Aluno al) {
     _listaAlunos.remove(al);
      
    
  }

  void imprimir() {
    for (var aluno in _listaAlunos) {
      print(aluno.toString());
    }
  }
}
