import 'package:flutter/material.dart';
import 'tela_perguntas.dart'; // Importe o arquivo tela_perguntas.dart

class TelaInicio extends StatelessWidget {
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
            Positioned(
              top: 100,
              left: 100,
              child: Image.asset(
                'assets/images/estrela_de_rondonia.png',
                width: 250.0,
                height: 250.0,
              ),
            ),
            Positioned(
              top: 283,
              left: 100,
              child: Text(
                'HISTÓRIA\nDE RONDÔNIA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'GeometryExtraBold',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 100.0, top: 110.0),
                  child: ElevatedButton(
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
                        'INICIAR',
                        style: TextStyle(
                          fontFamily: 'GeometryExtraBold',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
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
