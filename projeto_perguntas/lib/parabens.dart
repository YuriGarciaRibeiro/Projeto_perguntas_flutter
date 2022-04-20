// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class Parabens extends StatelessWidget {
  final int nota;
  final Function() onReiniciar;

  Parabens(this.nota, this.onReiniciar);

  String get fraseResultado {
    if (nota < 8) {
      return 'Parabéns!';
    } else if (nota < 12) {
      return 'Você é bom!';
    } else if (nota < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        )),
        FlatButton(
          onPressed: onReiniciar,
          child: Text('Reiniciar?'),
          textColor: Colors.blue,
        ),
      ],
    );
  }
}
