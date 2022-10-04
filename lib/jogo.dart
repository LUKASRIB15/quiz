import 'package:flutter/material.dart';
import 'package:modulo2/pergunta.dart';
import 'package:modulo2/resposta.dart';

class Jogo extends StatelessWidget {
   final List<Map<String,Object>> lista;
   final int indice;
   final Function funcao;

   Jogo({required this.lista, required this.indice, required this.funcao});

  @override
  Widget build(BuildContext context) {
     return Column(
              children:[
                Pergunta(lista[indice]['pergunta'] as String),

                ...(lista[indice]['resposta'] as List<Map<String,Object>>)
                .map((resposta){
                  return Resposta (() =>funcao(resposta['pontos']), resposta['text'] as String) ;
                  }).toList(),
                  
              ]
     ); 
  }
}