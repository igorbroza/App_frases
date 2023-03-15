import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "A vida e uma caixa preta nunca saberemos o seu real significado.⁠",
    "não deveríamos temer a morte, mais sim a vida.",
    "Faça a pessoa que você gosta se sentir especial ao invés de só mais uma.",
    "Seja estranho. Seja aleatório. Seja quem você é. Porque você nunca sabe quem amaria a pessoa que você esconde.",
    "Um ato aleatório de bondade, por menor que seja, pode ter um tremendo impacto na vida de outra pessoa.",
    "No mundo do aleatório a ordem é não se preocupar.",
  ];

  var _fraseGerada = "Clique Abaixo para gerar uma nova frase!";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt( _frases.length);

    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style:TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              ElevatedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green
                ),
                onPressed: _gerarFrase,
              ),
            ],
          ),
        )
      ),
    );
  }
}

