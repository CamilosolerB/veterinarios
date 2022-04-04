import 'package:flutter/material.dart';
import 'package:veterinarios/inicio.dart';

class politicas extends StatelessWidget {
  const politicas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: Color(0xFF221FEB),
    title: Text("Clinica veterinaria Rufolandia"),
    ),
      drawer: menu(),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    child: Text("Nuestras politicas",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                  ),
                  Image(image: AssetImage('imgs/politica.jpg'))
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.blue
              ),
              height: 250,
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              width: 280,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      child: Text("Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas"
                      ,style: TextStyle(
                          fontFamily: "GrapeNuts"
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas",
                          style: TextStyle(
                          fontFamily: "GrapeNuts"
                      ),
                      ),
                    )
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
