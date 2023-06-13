// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'aluno.dart';

class AlunoRepository {

  List<Aluno> _listaAlunos = [];
  AlunoRepository();

    void adicionar (Aluno al){
      _listaAlunos.add(al);
    }

    void imprimir(){
      for (var aluno in _listaAlunos) {
        print(aluno.toString());
      }
    }

  

}
