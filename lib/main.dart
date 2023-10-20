import 'package:flutter/material.dart';
import 'telas/tela_inicio.dart';
import 'telas/tela_perguntas.dart';
import 'telas/tela_resultados.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => TelaInicio(),
        '/perguntas': (context) => TelaPerguntas(),
        '/resultados': (context) => TelaResultados(0), // Fornecendo um valor inicial para 'pontuacao'
      },
    );
  }
}
