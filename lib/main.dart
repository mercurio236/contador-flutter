import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key, key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//usando stless para criar um widget rapido

//stfull, stateFul pode alterar o estado ao contrario do stateless que não tem mudança de estado
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
    count--;
    });
  }

  void increment() {
    setState(() {
    count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //scaffold é como se fosse um andaime, um modelo para criar as paginas
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/sorvete.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
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
            Padding(
              padding: EdgeInsets.all(32),
              child: Text(
                count.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 100,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 100),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))),
                  onPressed: decrement,
                  child: Text(
                    'Saiu',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  width: 32,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 100),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))),
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
      ),
    );
  }
}
