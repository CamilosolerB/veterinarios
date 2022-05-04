import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:veterinarios/inicio.dart';

class usuarios extends StatelessWidget {
  const usuarios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: consultausuario(),
        appBar: AppBar(
          backgroundColor: Color(0xFF221FEB),
          title: Text("Clinica veterinaria Rufolandia"),
        ),
        drawer: menu(),
      );
  }
}

class consultausuario extends StatefulWidget {
  const consultausuario({Key? key}) : super(key: key);

  @override
  State<consultausuario> createState() => _consultausuarioState();
}

class _consultausuarioState extends State<consultausuario> {
  final Stream<QuerySnapshot> consulta=FirebaseFirestore.instance.collection("Usuario").snapshots();
  @override
  Widget build(BuildContext context) {

    return StreamBuilder<QuerySnapshot>(
      stream: consulta,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot>snapshot){
        if(snapshot.hasError){
          return Text("error");
        }
        if(snapshot.connectionState==ConnectionState.waiting){
          return Text("Cargando");
        }
        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document){
            Map<String,dynamic> data = document.data()! as Map<String,dynamic>;
            return Container(
              color:Colors.blue,
              margin: EdgeInsets.only(top: 5),
              child: ListTile(
              title: Text(data["Usuario"]),
              subtitle: Text(data["Rol"])
        )
        );
          }
          ).toList()
        );
      }
    );
  }
}


