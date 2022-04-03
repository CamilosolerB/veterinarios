import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:veterinarios/inicio.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final Usuario = TextEditingController();
  final clave = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF221FEB),
        title: Text("Bienvenido"),
      ),
      body: Center(
          child: Container(
            width: 300,
            height: 400,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(bottom: 30),
                  child: Text("Inicio de sesion",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(3, 4)
                        ),
                      ]
                  ),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Usuario",
                                  labelText: "Usuario *",
                                  icon: Icon(Icons.account_circle_rounded),
                                  iconColor: Colors.black
                              ),
                              controller: Usuario,
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
                              controller: clave,
                              obscureText: true,
                            ),
                            width: 250
                        ),
                        Container(
                          width: 250,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: Color(0xFF221FEB),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: ElevatedButton(onPressed: (){
                              String usu, cla;
                              usu=Usuario.text;
                              cla=clave.text;
                              if(usu=="pepe"&&cla=="123"){
                                  succestoast();
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> inicio()));
                              }
                              else{
                                errortoast();
                              }
                            },
                              child: Text("Ingresar"),
                              style: ElevatedButton.styleFrom(primary: Colors.transparent),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}


void succestoast(){
  Fluttertoast.showToast(
      msg: "Bienvenido al sistema",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM
  );
}
void errortoast(){
  Fluttertoast.showToast(
      msg: "Usuario y/o contraseña incorrecta",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM
  );
}
