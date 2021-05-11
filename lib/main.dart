import 'package:flutter/material.dart';

void main() => runApp(MyFerreteriaApp());

class MyFerreteriaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Mi Ferreteria",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ), //Fin de theme

        //Ruta de ventanas
        routes: <String, WidgetBuilder>{
          "/inicio": (BuildContext context) => Inicio(),
          "/empresa": (BuildContext context) => Empresa(),
          "/productos": (BuildContext context) => Productos(),
          "/contacto": (BuildContext context) => Contacto(),
        }, //Fin de rutas

        home: Inicio()); //Fin de Material
  } //Fin de widget
} //Fin de ferreteria

class Empresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('EMPRESA'),
      ), //Fin de appBar
      body: Center(
        child: Text(
          'Seccion de empresa',
        ), //Fin de child: Text
      ), //Fin de body: Center
    ); //Fin de Scaffold
  } //Fin del widget Empresa
} //Fin de empresa

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('PRODUCTOS'),
      ), //Fin de appBar
      body: Center(
        child: Text(
          'Seccion de productos',
        ), //Fin de child: Text
      ), //Fin de body: Center
    ); //Fin de Scaffold
  } //Fin del widget productos
} //Fin de productos

class Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Contacto'),
      ), //Fin de appBar
      body: Center(
        child: Text(
          'Seccion de contacto',
        ), //Fin de child: Text
      ), //Fin de body: Center
    ); //Fin de Scaffold
  } //Fin del widget contacto
} //Fin de contacto

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 130, bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(color: Colors.deepOrange, image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/Alvarezrodri18/mis_imagenes/main/ferreteria.jpg"), alignment: Alignment.topCenter) //decorationImage
            ), //Fin caja
        //hacemos la columna de el mapa
        child: Column(
          children: <Widget>[
            //hacemos la primera fila de el mapa
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(100),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

                      onPressed: () {
                        Navigator.pushNamed(context, "/inicio");
                      }, //onpressed
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text(
                            "INICIO",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.deepOrangeAccent, fontWeight: FontWeight.w900),
                          ), //fin del center
                        ), //fin center
                      ), //fin sizedbox de inicio
                    ), //boton inicio
                  ) //fin padding
                ], //fin widget niño
              ), //fin de column dentro de column interna 1
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/empresa");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text("EMPRESA", textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  )
                ],
              ), //r1 columna 2
            ] //segundo children fin 2 widget
                ), //cierre de row- fila 1

//inicio de la fila 2
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/productos");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("PRODUCTOS", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ), // row 2 fin columna 1
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/contacto");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("CONTACTO", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ], //fin children del 2-2
                ), //fin row2 columna 2
              ],
            ), //fin row 2 fila 2
          ], //cierre de children widget 1
        ), //cierre de column en el child
      ), //Fin container
    ); //Fin Scaffold
  } //Fin widget inicio
} //Fin de Inicio
