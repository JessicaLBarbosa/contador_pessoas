// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ContadorPessoas extends StatefulWidget {
  const ContadorPessoas({Key? key}) : super(key: key);

  @override
  State<ContadorPessoas> createState() => _ContadorPessoasState();
}

class _ContadorPessoasState extends State<ContadorPessoas> {
  int _people = 0;
  String _infoText = "Pode Entrar!";

  void _changePeople(int number) {
    setState(() {
      _people += number;

      if (_people < 0) {
        _infoText = "Mundo Invertido!?";
      } else if (_people <= 10) {
        _infoText = "Pode Entrar!";
      } else {
        _infoText = "Lotado!!!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Contador de Pessoas',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/misc_003.jpg",
              fit: BoxFit.cover,
              height: 1000,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pessoas: $_people",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                Divider(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextButton(
                        child: Text(
                          "+1",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.amber,
                          ),
                        ),
                        onPressed: () {
                          _changePeople(1);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextButton(
                        child: Text(
                          "-1",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.amber,
                          ),
                        ),
                        onPressed: () {
                          _changePeople(-1);
                        },
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 40,
                ),
                Text(
                  _infoText,
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontStyle: FontStyle.italic,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
