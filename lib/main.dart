import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column (
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Sensor de Oxigenacion ',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 40,
                  fontWeight:  FontWeight.bold,
                ),
                ),
                Text('By CODE-CRAFTERS',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(74, 68, 70, 207),
                  fontWeight: FontWeight.w700
                ),
                )
          ],
        ),
        Image.asset('assets/fast-heart.gif'), //imagen del corazón
        
        Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Iniciar sesión')),//boton para iniciar sesion
            TextButton(onPressed: () {}, child: Text('Registrate'))//boton para registrarse
          ],
          
        )
        ],
        ),
      )),
    );
  }
}