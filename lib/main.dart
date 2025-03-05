import 'package:flutter/material.dart';
import 'package:hellow_wordl/presentation/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //borrar banner debug
      debugShowCheckedModeBanner: false,
      //activar tema para el app
      theme: ThemeData(
        //activar material design 3
        useMaterial3: true,
        //color para el aplicativo botones y otros
        colorSchemeSeed: Colors.blue,
      ),

      //llamamos a nuestros widget que esta en counter_screen.dart
      home: CounterScreen(),
    );
  }
}
