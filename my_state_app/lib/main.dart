
import 'package:flutter/material.dart';

void main(List<String> args){
  runApp(QuestionarioApp());

}
class QuestionarioApp extends StatelessWidget {
  
  final List<String> minhasPerguntas = [
    "Primeira pergunta",
    "Segunda pergunta",
    "Terceira pergunta"
  ];

  int indiceDaPergunta = 0;

  void trocarPerguntar(int index){
    indiceDaPergunta = index;
  }
  
  
  @override
  Widget build(BuildContext context) {
    return(MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Questionario")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(),
            Text(minhasPerguntas.elementAt(indiceDaPergunta)),
            ElevatedButton(onPressed: () => trocarPerguntar(0), child: Text("Primeira pergunta"))
          ],
        ),
      ),
    ));
  }
}