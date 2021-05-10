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
        decoration: BoxDecoration(color: Colors.orange, image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/Alvarezrodri18/mis_imagenes/main/ferreteria.jpg"), alignment: Alignment.topCenter) //decorationImage
            ), //Fin caja
      ), //Fin container
    ); //Fin Scaffold
  } //Fin widget inicio
} //Fin de Inicio
