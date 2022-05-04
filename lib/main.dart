import 'package:flutter/material.dart';
import 'package:veterinarios/inicio.dart';
import 'package:veterinarios/login.dart';
import 'package:veterinarios/vistainicial.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
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