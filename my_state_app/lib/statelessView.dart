import 'package:flutter/material.dart';

void main(List<String> args){
  runApp(QuestionarioApp());
}
class QuestionarioApp extends StatefulWidget{
  @override
  State<QuestionarioApp> createState() =>  _QuestionarioAppState();
  
}


class _QuestionarioAppState extends State<QuestionarioApp>{
  
  final List<String> minhasPerguntas = [
    "Primeira Pergunta",
    "Segunda Pergunta",
    "Terceira Pergunta"
  ];

  int indiceDaPergunta = 0;

  void trocarPerguntar(int index){
    setState(() {
      indiceDaPergunta = index;
    });

    indiceDaPergunta = index;
     print("Voce selecionou a pergunta: \"${minhasPerguntas.elementAt(index)}\"");
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () => trocarPerguntar(0), child: const Text("Primeira Pergunta"),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () => trocarPerguntar(1), child: const Text("Segunda Pergunta"),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () => trocarPerguntar(2), child: const Text("Terceira Pergunta"),),
            ),
          ],
        ),
      ),
    ));
  }

}