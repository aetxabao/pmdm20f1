import 'package:flutter/material.dart';

class AvesScreen extends StatelessWidget {
  String zonas;

  @override
  Widget build(BuildContext context) {
    zonas = "XXXXX";
    return Scaffold(
      appBar: AppBar(
        title: Text(zonas),
      ),
      body: Text("Esto debería ser un swiper"),
    );
  }
}
