import 'package:flutter/material.dart';
import 'package:veterinarios/inicio.dart';


class citas extends StatelessWidget {
  const citas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF221FEB),
        title: Text("Clinica veterinaria Rufolandia"),
      ),
      drawer: menu(),
      body: Center(
        child: Container(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Documento del representante",
                          labelText: "Documento del representante *",
                          icon: Icon(Icons.document_scanner_rounded),
                          iconColor: Colors.black,

                      ),
                    ),
                    width: 250
                ),
                Container(
                    child: TextFormField(

                      decoration: InputDecoration(
                          hintText: "Nombre del representante",
                          labelText: "Nombre del representante *",
                          icon: Icon(Icons.account_circle_rounded),
                          iconColor: Colors.black
                      ),
                    ),
                    width: 250
                ),
                Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Fecha y hora de la cita",
                          labelText: "Fecha y hora de la cita *",
                          icon: Icon(Icons.calendar_today_rounded),
                          iconColor: Colors.black,
                      ),
                    ),
                    width: 250
                ),
                Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Nombre de la mascota",
                          labelText: "Nombre de la mascota *",
                          icon: Icon(Icons.pets_sharp),
                          iconColor: Colors.black
                      ),
                    ),
                    width: 250
                ),
                InkWell(
                  child: Container(
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFF221FEB),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2.0, color: Color(0xFF221FEB))
                      ),
                      child: Center(
                        child: Text("Registrarse", textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

