import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key, key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const HomePage(),
    );
  }
}

//usando stless para criar um widget rapido

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //scaffold é como se fosse um andaime, um modelo para criar as paginas
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Pode entrar',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          Text(
            '0',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 100,
            ),
          )
        ],
      ),
    );
  }
}
