// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, annotate_overrides, prefer_const_literals_to_create_immutables, unused_local_variable, deprecated_member_use, avoid_print, unused_element, unnecessary_import

import 'package:flutter/material.dart';

import './parabens.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontucaoTotal = 0;

  final _perguntas = [
    {
      'pergunta': 'Qual é a sua cor favorita?',
      'respostas': [
        {"texto": 'Preto', "nota": 4},
        {"texto": 'Vermelho', "nota": 2},
        {"texto": 'Verde', "nota": 1},
        {"texto": 'Branco', "nota": 3},
      ],
    },
    {
      'pergunta': 'Qual é o seu animal favorito?',
      'respostas': [
        {"texto": 'Coelho', "nota": 4},
        {"texto": 'Cobra', "nota": 2},
        {"texto": 'Elefante', "nota": 1},
        {"texto": 'Leão', "nota": 3},
      ],
    },
    {
      'pergunta': 'Qual é o seu instrutor favorito?',
      'respostas': [
        {"texto": 'Maria', "nota": 4},
        {"texto": 'João', "nota": 2},
        {"texto": 'Pedro', "nota": 1},
        {"texto": 'Paulo', "nota": 3},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontucaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontucaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(_responder, _perguntas, _perguntaSelecionada)
            : Parabens(_pontucaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
