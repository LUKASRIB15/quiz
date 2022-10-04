import 'package:flutter/material.dart';

class Pergunta extends StatelessWidget {
  final String pergunta;

  Pergunta(this.pergunta);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          child: Text(
              pergunta,
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 30,
            ),
            ),
    );
  }
}