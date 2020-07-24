import 'package:flutter/material.dart';

main() => runApp(PerguntasApp());

class PerguntasApp extends StatelessWidget {
  var perguntaSelecionada = 0;

  void responder() {
    perguntaSelecionada++;
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'qual e sua cor favorita?',
      'qual e seu carro favorito?',
      'qual seu animal favorito?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PerguntasApp'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('resposta2'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('resposta 3'),
              onPressed: responder,
            )
          ],
        ),
      ),
    );
  }
}
