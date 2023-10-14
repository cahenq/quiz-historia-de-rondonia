import 'package:flutter/material.dart';
import 'tela_perguntas.dart';
import 'tela_inicio.dart';
import 'package:quiz_game/dadosquiz.dart';

class TelaResultados extends StatelessWidget {
  

  

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
              'SEU RESULTADO FOI ${DadosQuiz.pontos}',
              style: TextStyle(
                fontFamily: 'GeometryExtraBold',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 40.0,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaPerguntas()),
                );
              },
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
                  'JOGAR DE NOVO',
                  style: TextStyle(
                    fontFamily: 'GeometryExtraBold',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaInicio()),
                );
              },
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
                  'INÍCIO',
                  style: TextStyle(
                    fontFamily: 'GeometryExtraBold',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
