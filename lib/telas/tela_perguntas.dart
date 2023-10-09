import 'package:flutter/material.dart';
import '../dadosquiz.dart';
import 'dart:math';


class TelaPerguntas extends StatefulWidget {
  @override
  _TelaPerguntasState createState() => _TelaPerguntasState();
}

class _TelaPerguntasState extends State<TelaPerguntas> {
  int _currentQuestionIndex = 0;

  List<Map<String, dynamic>> perguntas = [
    {
      'pergunta': 'Por que a EEFM foi construída?',
      'alternativas': [
        'Para promover a educação rural na região',
        'Para fornecer energia elétrica para a região',
        'Facilitar o transporte de produtos para a região',
        'Para preservar a cultura local'
      ],
      'resposta': 'Facilitar o transporte de produtos para a região',
      'imagem': null,
    },
    {
      'pergunta': 'Que fortificação é essa?',
      'alternativas': [
        'Forte Princípe da Beira',
        'Forte de São João',
        'Forte de Santa Cruz',
        'Forte de Copacabana'
      ],
      'resposta': 'Forte Princípe da Beira',
      'imagem': 'assets/images/forte.jpeg',
    },
    {
      'pergunta': 'Qual rodovia é essa na imagem?',
      'alternativas': [
        'BR-364',
        'BR-101',
        'BR-230',
        'BR-319'
      ],
      'resposta': 'BR-319',
      'imagem' : 'assets/images/br-319.jpg'
    },
    {
      'pergunta': 'De quais estados foi desmembrada a região que hoje compreende o estado de Rondônia?',
      'alternativas': [
        'Mato Grosso e Amazonas',
        'Goiás e Tocantins',
        'Acre e Pará',
        'Amazonas e Acre'
      ],
      'resposta': 'Mato Grosso e Amazonas',
      'imagem' : null
    },
    {
      'pergunta': 'Qual a origem do nome "Rondônia"?',
      'alternativas': [
        'Origem Tupi "Rondõ"',
        'Homenagem a um líder tribal',
        'Deriva do explorador Marechal Rondon',
        'Origina-se do Latim "Rodundia"'
      ],
      'resposta': 'Deriva do explorador Marechal Rondon',
      'imagem' : null
    },
    {
      'pergunta': 'Em que ano foi criado o estado de Rondônia?',
      'alternativas': [
        '1970',
        '1981',
        '1990',
        '2002'
      ],
      'resposta': '1981',
      'imagem' : null
    },
    {
      'pergunta': 'Quem foi responsável pela colonização de Rondônia?',
      'alternativas': [
        'Espanhóis e Portugueses',
        'Jesuítas e Missionários Franciscanos',
        'Bandeirantes e Exploradores Alemães',
        'Ingleses e Holandeses'
      ],
      'resposta': 'Espanhóis e Portugueses',
      'imagem' : null
    },
    {
      'pergunta': 'Qual das opções abaixo é um produto nativo de Rondônia?',
      'alternativas': [
        'Uva',
        'Morango',
        'Cacau',
        'Banana'
      ],
      'resposta': 'Cacau',
      'imagem' : null
    },
    {
      'pergunta': 'Em qual governo Rondônia deixou de ser território e se tornou um estado?',
      'alternativas': [
        'Governo Lula',
        'Governo João Figueiredo',
        'Governo Itamar Franco',
        'Governo Geisel'
      ],
      'resposta': 'Governo João Figueiredo',
      'imagem' : null
    },
    {
      'pergunta': 'Qual foi a data de instalação do município de Porto Velho?',
      'alternativas': [
        '2 de agosto de 1889',
        '4 de julho de 1904',
        '24 de janeiro de 1915',
        '10 de outubro de 1931'
      ],
      'resposta': '24 de janeiro de 1915',
      'imagem' : null
    },
    {
      'pergunta': 'Em qual expedição o território que hoje é Rondônia foi descoberto por bandeirantes?',
      'alternativas': [
        'Expedição de Antônio Raposo Tavares',
        'Expedição de Marechal Rondon',
        'Expedição de Francisco de Orellana',
        'Expedição de Pedro Teixeira'
      ],
      'resposta': 'Expedição de Antônio Raposo Tavares',
      'imagem' : null
    },
    {
      'pergunta': 'Qual é o significado das cores da bandeira do Estado de Rondônia?',
      'alternativas': [
        'Verde representa a paz, amarelo as riquezas minerais, azul o céu, e branco as matas',
        'Verde representa as matas, amarelo as riquezas minerais, azul o céu, e branco a paz',
        'Verde representa as riquezas minerais, amarelo o céu, azul as matas, e branco a paz',
        'Verde representa a esperança, amarelo as riquezas minerais, azul o céu, e branco a paz'
      ],
      'resposta': 'Verde representa as matas, amarelo as riquezas minerais, azul o céu, e branco a paz',
      'imagem' : null
    },
    {
      'pergunta': 'Qual é o rio mais importante de Rondônia?',
      'alternativas': [
        'Rio Guaporé',
        'Rio Madeira',
        'Rio Candeias',
        'Rio Juruá'
      ],
      'resposta': 'Rio Madeira',
      'imagem' : null
    },
    {
      'pergunta': 'Qual é a usina mais importante de Rondônia?',
      'alternativas': [
        'Usina Hidrelétrica de Belo Monte',
        'Usina Hidrelétrica de Jirau',
        'Usina Hidrelétrica de Samuel',
        'Usina Hidrelétrica de Santo Antônio'
      ],
      'resposta': 'Usina Hidrelétrica de Santo Antônio',
      'imagem' : null
    },
    {
      'pergunta': 'Qual das festividades abaixo tem origem em Rondônia?',
      'alternativas': [
        'Oktoberfest',
        'Festa do Divino Espírito Santo',
        'Carnaval',
        'Festa de São João'
      ],
      'resposta': 'Festa do Divino Espírito Santo',
      'imagem' : null
    },
  ];
  @override
  void initState(){
    super.initState();
    perguntas.shuffle(Random());
  }

  void _responderPergunta(String resposta) {
    DadosQuiz.respostas.add(resposta);
     if (_currentQuestionIndex < perguntas.length - 1) {
    setState(() {
      _currentQuestionIndex++;
    });
  } else {
    print('Todas as perguntas foram respondidas');
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
            if (perguntas[_currentQuestionIndex]['imagem'] != null)
              Image.asset(
                perguntas[_currentQuestionIndex]['imagem'],
                height: 250, // Ajuste a altura conforme necessário
                width: 250, // Ajuste a largura conforme necessário
              ),
            SizedBox(height: 10.0),
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
              children: (perguntas[_currentQuestionIndex]['alternativas']
                      as List<String>)
                  .map(
                    (alternativa) => SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => _responderPergunta(alternativa),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
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
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
