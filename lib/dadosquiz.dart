import 'package:flutter/material.dart';

class DadosQuiz {
  static List<String> respostas = [];
  static int pontos = 0;

  static void verificarResposta(bool respostaCorreta) {
    if (respostaCorreta) {
      pontos++;
    }
  }

  static void reiniciarQuiz() {
    respostas = [];
    pontos = 0;
  }
}
