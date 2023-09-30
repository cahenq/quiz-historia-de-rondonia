import 'package:flutter/material.dart';
import 'tela_inicio.dart'; // Importe o arquivo tela_inicio.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaInicio(), // Use o widget TelaInicio() do arquivo tela_inicio.dart
    );
  }
}
