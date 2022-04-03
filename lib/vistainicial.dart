import 'package:flutter/material.dart';
import 'package:veterinarios/login.dart';
import 'package:veterinarios/singin.dart';

class vistainicial extends StatefulWidget {
  const vistainicial({Key? key}) : super(key: key);

  @override
  State<vistainicial> createState() => _vistainicialState();
}

class _vistainicialState extends State<vistainicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF1377C5)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Image(
                image: AssetImage('imgs/logo.png'),
              ),
            ),
            Column(
              children: [
                InkWell(
                  child: Container(
                      width: 250,
                      height: 40,
                      margin: EdgeInsets.only(bottom: 7),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text("Iniciar sesion", textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueAccent
                          ),
                        ),
                      )
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> login()));
                  },
                ),
                InkWell(
                  child: Container(
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
