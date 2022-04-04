import 'package:flutter/material.dart';
import 'package:veterinarios/cita.dart';
import 'package:veterinarios/general.dart';
import 'package:veterinarios/politicas.dart';
import 'package:veterinarios/vista1.dart';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  color: Color(0xFF221FEB)
              )
              ,child: Image(image: AssetImage('imgs/0157.png'))
          ),
          ListTile(
            title: Text("Nuestros productos y servicios"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Interes general"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>general()));
            },
          ),
          ListTile(
            title: Text("Agendar cita"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> citas()));
            }
          ),
          ListTile(
            title: Text("Paseadores"),
          ),
          ListTile(
            title: Text("Politicas de la compañia"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>politicas()));
            },
          ),
        ],
      ),
    );
  }
}

class barra extends StatefulWidget {
  const barra({Key? key}) : super(key: key);

  @override
  State<barra> createState() => _barraState();
}

class _barraState extends State<barra> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
    backgroundColor: Color(0xFF221FEB),
    title: Text("Clinica veterinaria Rufolandia"),
    );
  }
}


class inicio extends StatefulWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  int _selectindex = 0;
  static List<Widget> options = <Widget>[
    products(),
    services(),
    precios()
  ];
  
  void _onitem (int index){
    setState(() {
      _selectindex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF221FEB),
        title: Text("Clinica veterinaria Rufolandia"),
      ),
      drawer: menu(),
      body: Center(
        child: options.elementAt(_selectindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Productos"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety_sharp),
              label: "Servicios"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              label: "Costos"
          )
        ],
        currentIndex: _selectindex,
        onTap: _onitem,
      ),
    );
  }
}




