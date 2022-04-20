// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelect;

  Resposta(this.texto, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          child: Text(texto),
          onPressed: onSelect,
          color: Colors.blue,
          textColor: Colors.white,
        ));
  }
}
