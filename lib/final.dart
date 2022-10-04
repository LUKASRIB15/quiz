

import 'package:flutter/material.dart';

class PagFinal extends StatelessWidget {
  final VoidCallback functionRestart;
  final VoidCallback functionBack;
  final int pontuacao;

  PagFinal(this.functionRestart, this.functionBack, this.pontuacao);

  String textFinal(){
    var texto;
    if(pontuacao == 200){
      texto="Gabaritou!";
    }else if(pontuacao == 100){
      texto="Foi bem!";
    }else{
      texto="Zerou!";
    }

    return texto;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 50.0, bottom: 30.0),
        width: double.infinity,
        child: Column(
          children: [
              Text(
              "Quiz Finalizado",
              style: TextStyle(
                fontSize: 50.0,
              ),
              ),

              Text(
              "${pontuacao}",
              style: TextStyle(
                fontSize: 80.0,
              ),
              textAlign: TextAlign.center,
              ),

              Text(
              "${textFinal()}",
              style: TextStyle(
                fontSize: 40.0,
              ),
              textAlign: TextAlign.center,
              ),


              OutlinedButton(
                child: Text("Reiniciar jogo"),
                style: OutlinedButton.styleFrom(primary: Colors.green, side: BorderSide(color:Colors.green)),
                onPressed: functionRestart,
              ),

              ElevatedButton(
                child: Text("Voltar ao Início"),
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: functionBack,
              ),
          ],
        ),
    );
    
  }
}