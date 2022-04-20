// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final void Function(int) onSelect;
  final List<Map<String, Object>> lista;
  final int perguntaSelecionada;

  Questionario(this.onSelect, this.lista, this.perguntaSelecionada,);

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < lista.length;
  }
      

  @override
  Widget build(BuildContext context) {

    List<Map<String,Object>> respostas = temPerguntaSelecionada ? lista[perguntaSelecionada]['respostas'] : null;
    return Column(
      children: <Widget>[
        Questao(lista[perguntaSelecionada]['pergunta']),
        ...respostas.map((resp)  {
          return Resposta(
          resp['texto'], 
          () => onSelect(resp['nota']));
        }).toList(),
      ],
    );
  }
}
