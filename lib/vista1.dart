import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class products extends StatefulWidget {
  const products({Key? key}) : super(key: key);

  @override
  State<products> createState() => _productsState();
}

class _productsState extends State<products> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
                        image: AssetImage('imgs/medicamentos.jpg'),
                        width: 125,
                        height: 100,
                      ),
                      Expanded(child: ListTile(
                        title: Text("Medicamentos"),
                        subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dum."),
                      )
                      )
                    ],
                  ),
                  Container(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: TextButton(onPressed: (){}, child: Text("Ver medicamentos")),
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
                          title: Text("Aseo y accesorios"),
                          subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dum."),
                        )
                        ),
                        Image(
                          image: AssetImage('imgs/aseo.jpg'),
                          width: 125,
                          height: 100,
                        )
                      ],
                    ),
                    Container(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: TextButton(onPressed: (){}, child: Text("Ver elementos de aseo")),
                    )
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}

class services extends StatefulWidget {
  const services({Key? key}) : super(key: key);

  @override
  State<services> createState() => _servicesState();
}

class _servicesState extends State<services> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
                          image: AssetImage('imgs/salud.png'),
                          width: 125,
                          height: 100,
                        ),
                        Expanded(child: ListTile(
                          title: Text("Consulta veterinaria"),
                          subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dum."),
                        )
                        )
                      ],
                    ),
                    Container(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: TextButton(onPressed: (){}, child: Text("Ver citas")),
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
                          title: Text("higiene oral a animales"),
                          subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dum."),
                        )
                        ),
                        Image(
                          image: AssetImage('imgs/higiene-oral.jpg'),
                          width: 125,
                          height: 100,
                        )
                      ],
                    ),
                    Container(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: TextButton(onPressed: (){}, child: Text("Ver elementos de aseo")),
                    )
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}

class precios extends StatefulWidget {
  const precios({Key? key}) : super(key: key);

  @override
  State<precios> createState() => _preciosState();
}

class _preciosState extends State<precios> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
                          image: AssetImage('imgs/medicamentos.jpg'),
                          width: 125,
                          height: 100,
                        ),
                        Expanded(child: ListTile(
                          title: Text("Medicamentos"),
                          subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dum."),
                        )
                        )
                      ],
                    ),
                    Container(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: TextButton(onPressed: (){}, child: Text("Ver medicamentos")),
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
                          title: Text("Aseo y accesorios"),
                          subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dum."),
                        )
                        ),
                        Image(
                          image: AssetImage('imgs/aseo.jpg'),
                          width: 125,
                          height: 100,
                        )
                      ],
                    ),
                    Container(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: TextButton(onPressed: (){}, child: Text("Ver elementos de aseo")),
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
                          title: Text("higiene oral a animales"),
                          subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dum."),
                        )
                        ),
                        Image(
                          image: AssetImage('imgs/higiene-oral.jpg'),
                          width: 125,
                          height: 100,
                        )
                      ],
                    ),
                    Container(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: TextButton(onPressed: (){}, child: Text("Ver elementos de aseo")),
                    )
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}


