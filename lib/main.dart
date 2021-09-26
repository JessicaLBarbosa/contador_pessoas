// ignore_for_file: prefer_const_constructors

import 'package:contador_pessoas/contador.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contador de Pessoas',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: ContadorPessoas(),
    );
  }
}
