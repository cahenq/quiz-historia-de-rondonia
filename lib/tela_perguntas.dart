import 'package:flutter/material.dart';
import 'tela_inicio.dart'; // Importe o arquivo tela_inicio.dart

class TelaPerguntas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Perguntas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pergunta 1',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaInicio()),
                );
              },
              child: Text('Resposta 1'),
            ),
            SizedBox(height: 20),
            Text(
              'Pergunta 2',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaInicio()),
                );
              },
              child: Text('Resposta 2'),
            ),
          ],
        ),
      ),
    );
  }
}
