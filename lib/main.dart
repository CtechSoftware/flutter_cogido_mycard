import 'package:flutter/material.dart';

//Stateless vs Stateful
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String nombre = 'Pedro Montes';
  int contador = 100;
  int contador1 = 100;
  double tamano = 20.0;
  Color colorLetra = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('"Flutter State"'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(contador1.toString(), style: TextStyle(fontSize: 40.0)),
            Text(contador.toString(), style: TextStyle(fontSize: 40.0)),
            Text(
              "Nombre: $nombre",
              style: TextStyle(fontSize: tamano, color: colorLetra),
            ),

            ElevatedButton(
              child: Text("Cambiar texto"),
              onPressed: () {
                nombre = 'Ramon Gonzales';
                contador = contador + 1;
                contador1 = contador - 1;
                tamano = tamano + 1;
                colorLetra = Colors.blue;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
