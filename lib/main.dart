
import 'package:flutter/material.dart';
import 'package:modulo2/jogo.dart';
import 'package:modulo2/pergunta.dart';
import 'package:modulo2/resposta.dart';
import 'package:modulo2/final.dart';
import 'package:modulo2/inicio.dart';

void main(){
  runApp(MeuApp());
}


class MeuApp extends StatefulWidget{
  State<StatefulWidget> createState(){
    return MeuAppState();
  }
}

class MeuAppState extends State<MeuApp>{
  var mudaIndice=0;
  var inicio=false;
  var pontuacao=0;
  final perguntas= const[
    {'pergunta':'Qual time Lucas Ribeiro torce?',
     'resposta':[
       {'text':'Vasco', 'pontos':100},
       {'text':'Botafogo', 'pontos':0}, 
       {'text':'Flamengo', 'pontos':0},
       {'text':'Fluminense', 'pontos':0}
       ]
    },
    {'pergunta':'Qual área Lucas Ribeiro gosta mais de trabalhar?',
     'resposta':[
       {'text':'Desenvolvedor web', 'pontos': 100},
       {'text':'Ciência de dados', 'pontos':0},
       {'text': 'manutenção de computadores', 'pontos':0},
       {'text': 'desenvolvimento mobile', 'pontos':0}
       ]
    }
  ];
  void backQuiz(){
    setState(() {
      inicio=false;
    });
  }
  void iniciarQuiz(){
    setState(() {
      inicio=true;
      mudaIndice=0;
      pontuacao=0;
    });
  }
  void reiniciarQuiz(){
    setState(() {
      mudaIndice=0;
      pontuacao=0;
    });
  }
  void respostaEscolhida(int pontos){
    setState(() {
      pontuacao+=pontos;
      mudaIndice++;
    });
  }

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text("Módulo 2"),
        ),
        body: 
          inicio == true ?
            mudaIndice<perguntas.length ?
              
              Jogo(lista: perguntas, indice: mudaIndice, funcao: respostaEscolhida)

              : 
                PagFinal(reiniciarQuiz, backQuiz, pontuacao)
              : 
                Inicio(iniciarQuiz),
              ),
        
          );
        

  }
}

