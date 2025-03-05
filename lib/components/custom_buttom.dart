import 'package:flutter/material.dart';

//aquí el objetivo es llamar a boton usando CustomButtom(icon:Icons.exposure_minus_1_outlined,onpressed)
class CustomButtom extends StatelessWidget {
  //definimos atributos
  //icono
  final IconData icon;

  //el tipo de dato para on pressed es voidCallback y ? sera opcional
  final VoidCallback? onPressed;

  //initialization de constructor
  const CustomButtom({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
