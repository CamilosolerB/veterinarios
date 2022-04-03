import 'package:flutter/material.dart';
import 'package:veterinarios/inicio.dart';
import 'package:veterinarios/login.dart';
import 'package:veterinarios/vistainicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Veterinaria",
      home: vistainicial()
    );
  }
}