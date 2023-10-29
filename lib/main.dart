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

  void decrement() {
    print('Decrement');
  }

  void increment() {
    print('increment');
  }

  @override
  Widget build(BuildContext context) {
    //scaffold é como se fosse um andaime, um modelo para criar as paginas
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Pode entrar',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '0',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 100,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                child: Text(
                  'Saiu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                  ),
                ),
              ),
              TextButton(
                onPressed: increment,
                child: Text(
                  'Entrou',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
