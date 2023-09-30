import 'package:flutter/material.dart';

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
        child: Center(
          child: Text(
            'Seu Conteúdo Aqui',
            style: TextStyle(
              fontFamily: 'GeometryExtraBold',
              fontWeight: FontWeight.bold, // Bold
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
        ),
      ),
    );
  }
}
