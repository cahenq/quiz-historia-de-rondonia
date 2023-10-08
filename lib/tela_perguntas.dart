import 'package:flutter/material.dart';
import 'tela_inicio.dart';

class TelaPerguntas extends StatefulWidget {
  @override
  _TelaPerguntasState createState() => _TelaPerguntasState();
}

class _TelaPerguntasState extends State<TelaPerguntas> {
  int _currentQuestionIndex = 0;

  List<Map<String, dynamic>> perguntas = [
    {
      'pergunta': 'Qual é a capital do Brasil?',
      'alternativas': ['São Paulo', 'Rio de Janeiro', 'Brasília', 'Salvador'],
      'resposta': 'Brasília',
    },
    {
      'pergunta': 'Quantos planetas existem no sistema solar?',
      'alternativas': ['Sete', 'Oito', 'Nove', 'Dez'],
      'resposta': 'Oito',
    },
    {
      'pergunta': 'Quem escreveu Dom Quixote?',
      'alternativas': ['Machado de Assis', 'Cervantes', 'Shakespeare', 'Dostoiévski'],
      'resposta': 'Cervantes',
    },
    // Adicione mais perguntas conforme necessário
  ];

  void _responderPergunta(String resposta) {
    if (resposta.toLowerCase() == perguntas[_currentQuestionIndex]['resposta'].toLowerCase()) {
      if (_currentQuestionIndex < perguntas.length - 1) {
        setState(() {
          _currentQuestionIndex++;
        });
      } else {
        print('Todas as perguntas foram respondidas');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF002081), Color(0xFF068946)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              perguntas[_currentQuestionIndex]['pergunta'],
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              children: (perguntas[_currentQuestionIndex]['alternativas'] as List<String>).map((alternativa) {
                return SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => _responderPergunta(alternativa),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      child: Text(
                        alternativa,
                        style: TextStyle(
                          fontFamily: 'GeometryExtraBold',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
