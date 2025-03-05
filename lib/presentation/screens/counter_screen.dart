import 'package:flutter/material.dart';
import 'package:hellow_wordl/components/custom_buttom.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //declaramos contador
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Contador")),
        //leading para la cabecera a la izquierda
        leading: IconButton(
          icon: const Icon(Icons.refresh_outlined),
          onPressed: () {
            setState(() {
              count = 0;
            });
          },
        ),
        //action para la cabera pero a la izquierda
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_sharp),
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$count",
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            Text(count == 1 ? "click" : "clicks",
                style: const TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButtom(
            icon: Icons.refresh_outlined,
            onPressed: () => {
              setState(() {
                count = 0;
              })
            },
          ),
          const SizedBox(height: 15),
          CustomButtom(
            icon: Icons.plus_one_outlined,
            onPressed: () {
              setState(() {
                count++;
              });
            },
          ),
          const SizedBox(height: 15),
          CustomButtom(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if (count == 0) return;
              setState(() {
                count--;
              });
            },
          ),
        ],
      ),
    );
  }
}
