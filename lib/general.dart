import 'package:flutter/material.dart';
import 'package:veterinarios/inicio.dart';

class general extends StatelessWidget {
  const general({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF221FEB),
        title: Text("Clinica veterinaria Rufolandia"),
      ),
      drawer: menu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 280,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0.5,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                        color: Colors.grey
                    )
                  ],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: NetworkImage('https://www.abogadosdelosanimales.org/wp-content/uploads/2016/05/casa3-300x219.jpg'),
                            width: 125,
                            height: 100,
                          ),
                          Expanded(child: ListTile(
                            title: Text("PROTECCION."),
                            subtitle: Text("Dale un lugar seguro donde resguardarse del frio y calor."),
                          )
                          )
                        ],
                      ),
                      Container(
                        alignment: AlignmentDirectional.bottomEnd,
                        child: TextButton(onPressed: (){}, child: Text("Ver mas")),
                      )
                    ],
                  )
              ),
            ),
            Container(
              width: 280,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0.5,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                        color: Colors.grey
                    )
                  ],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [

                          Expanded(child: ListTile(
                            title: Text("ALIMENTACIÓN."),
                            subtitle: Text("Dale alimentación diaria, sana y balanceada (croquetas). Siempre debe tener agua fresca y limpia. Lava sus platos diariamente."),
                          )
                          ),
                          Image(
                            image: AssetImage('imgs/alimento.jpg'),
                            width: 125,
                            height: 100,
                          ),
                        ],
                      ),
                      Container(
                        alignment: AlignmentDirectional.bottomEnd,
                        child: TextButton(onPressed: (){}, child: Text("Ver mas")),
                      )
                    ],
                  )
              ),
            ),
            Container(
              width: 280,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0.5,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                        color: Colors.grey
                    )
                  ],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('imgs/limpieza.jpg'),
                            width: 125,
                            height: 100,
                          ),
                          Expanded(child: ListTile(
                            title: Text("LIMPIEZA."),
                            subtitle: Text("Debes mantenerlo limpio, libre de pulgas y garrapatas. Debes bañar a tu perro cada 15 días con jabón especial y a los gatos es necesario cepillarlos para quitarles el polvo y pelo suelto. Mantén también limpia el área donde habita."),
                          )
                          ),
                        ],
                      ),
                      Container(
                        alignment: AlignmentDirectional.bottomEnd,
                        child: TextButton(onPressed: (){}, child: Text("Ver mas")),
                      )
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
