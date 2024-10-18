
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _frases = [
    "Mesmo quando a noite mude, Não mudará eu e você - One Direction",
    "Não vivo um minuto sem você, dói demais. - Péricles",
    "Nos meus sonhos só vejo você. - Péricles",
    "Tentando lembrar como é ter um batimento cardíaco. - Harry Styles",
    "O meu coração ainda te procura - Luan Santana",
    "Você acha que ficaremos apaixonados para sempre? - Lana Del Rey",
    "Eu bebo sim, estou vivendo, tem gente que não bebe e está morrendo - Elizeth Cardoso",
    "Eu espero que você encontre paz nesta vida - Kendrick Lamar",
    "Veio ao mundo por engano, eu vim passear - DINGO",
    "Meu bem, você precisa entender, que a minha vida só se torna tolerável com você - O Grilo"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LyricWhisper"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                    color: Colors.black),
              ),
              ElevatedButton(
                onPressed: _gerarFrase,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                ),
                child: const Text(
                  "Novo trecho",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}