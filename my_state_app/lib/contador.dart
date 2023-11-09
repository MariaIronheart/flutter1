
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const IncrementoApp());

enum TipoIncremento {
  aumentar, diminuir, quadrado, resto, limpar
}

class IncrementoApp extends StatefulWidget {
  const IncrementoApp({super.key});
  
  @override
  IncrementoAppState createState() => IncrementoAppState();
 
 }

 
 class IncrementoAppState extends State<IncrementoApp> {

 int contador = 0;

  void incrementarContador(TipoIncremento tipo) {
    setState(() {
      switch(tipo){
        case TipoIncremento.aumentar:
          contador++;
          break;
        case TipoIncremento.diminuir:
          contador--;
          break;
        case TipoIncremento.quadrado:
          contador = pow(contador, 2).toInt();
          break;
        case TipoIncremento.resto:
          contador = contador % 2;
          break;
        default:
          contador = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exemplo de Contador Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contador: $contador',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      incrementarContador(TipoIncremento.aumentar);
                    },
                    child: const Text('Incrementar'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      incrementarContador(TipoIncremento.diminuir);
                    },
                    child: const Text('Decrementar'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      incrementarContador(TipoIncremento.quadrado);
                    },
                    child: const Text('Quadrado'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      incrementarContador(TipoIncremento.resto);
                    },
                    child: const Text('Resto'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
