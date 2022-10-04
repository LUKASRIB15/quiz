import 'dart:ffi';

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final VoidCallback functionResposta;
  final String respostas;

  Resposta(this.functionResposta, this.respostas);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left:40.0, right: 40.0),
      child: OutlinedButton(
              style: OutlinedButton.styleFrom(primary: Colors.green, side: BorderSide(color:Colors.green)),
              child: Text(respostas),
              onPressed: functionResposta,
            ),
    );
  }
}