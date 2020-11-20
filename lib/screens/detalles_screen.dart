import 'package:flutter/material.dart';

class DetallesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ZZZZZ"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Aquí vendría la imagen"),
            SizedBox(
              height: 10.0,
            ),
            Text("Aquí vendría el nombre"),
            Text("Aquí vendría la descripción"),
            Text("Aquí vendrían las zonas"),
          ],
        ),
      ),
    );
  }
}
