import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  final VoidCallback inicioQuiz;

  Inicio(this.inicioQuiz);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20, top: 30),
      child:Column(
        children:[

          Text(
            "Seja bem-vindo ao quiz do Lucas Ribeiro!",
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
          ),

          OutlinedButton(
            child: Text("Iniciar Quiz"),
            style: OutlinedButton.styleFrom(primary: Colors.green, side: BorderSide(color: Colors.green)),
            onPressed: inicioQuiz,
          ),
        ],
      ),
    );
  }
}