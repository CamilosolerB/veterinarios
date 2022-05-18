import 'package:flutter/material.dart';
import 'package:veterinarios/botones.dart';

class singin extends StatelessWidget {
  const singin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF221FEB),
        title: Text("Clinica veterinaria Rufolandia"),
      ),
      body: Center(
        child: Container(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Nombre",
                          labelText: "Nombre *",
                          icon: Icon(Icons.account_circle_rounded),
                          iconColor: Colors.black
                      ),
                    ),
                    width: 250
                ),
                Container(
                    child: TextFormField(

                      decoration: InputDecoration(
                          hintText: "Numero de documento",
                          labelText: "Numero de documento *",
                          icon: Icon(Icons.document_scanner),
                          iconColor: Colors.black
                      ),
                    ),
                    width: 250
                ),
                Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Direccion",
                          labelText: "Direccion *",
                          icon: Icon(Icons.home_outlined),
                          iconColor: Colors.black
                      ),
                    ),
                    width: 250
                ),
                Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Correo electronico",
                          labelText: "Correo electronico *",
                          icon: Icon(Icons.alternate_email),
                          iconColor: Colors.black
                      ),
                    ),
                    width: 250
                ),
                Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Telefono",
                          labelText: "Telefono *",
                          icon: Icon(Icons.phone),
                          iconColor: Colors.black
                      ),
                    ),
                    width: 250
                ),
                Container(
                    child: TextFormField(

                      decoration: InputDecoration(
                          hintText: "Contraseña",
                          labelText: "Contaseña *",
                          icon: Icon(Icons.lock),
                          iconColor: Colors.black
                      ),
                      obscureText: true,
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
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> singin()));
                  },
                ),
                GoogleSingIn()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
