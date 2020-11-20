import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ornito/models/ave_model.dart';

// ignore: must_be_immutable
class DetallesScreen extends StatelessWidget {
  Map<String, Object> args = new Map<String, Object>();
  Ave ave;

  @override
  Widget build(BuildContext context) {
    ave = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(ave.nombre),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: ave.numFila,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: FadeInImage(
                  placeholder: AssetImage('assets/images/birds.png'),
                  image: NetworkImage(ave.getImgUrl()),
                  fit: BoxFit.cover,
                  height: 240.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(ave.nombre,
                  textAlign: TextAlign.left,
                  style:
                      TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                ave.descripImpresion,
                textAlign: TextAlign.justify,
              ),
            ),
            Text(ave.zonas),
          ],
        ),
      ),
    );
  }
}
