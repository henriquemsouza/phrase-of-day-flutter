// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _phrase = ["lorem 1", "lorem 2", "lorem 3", "lorem 4"];
  var _phraseGenerated = "Clique abaixo para gerar uma frase";

  void _generatePhrase() {
    var sortedNumber = Random().nextInt(_phrase.length);

    setState(() {
      _phraseGenerated = _phrase[sortedNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.black12,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.amber)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("images/logo.png"),
                  Text(
                    _phraseGenerated,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        color: Colors.black),
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                      child: Text(
                        "Nova Frase",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      color: Colors.green,
                      onPressed: _generatePhrase)
                ]),
          ),
        ));
  }
}
