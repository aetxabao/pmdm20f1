import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ornito/screens/zonas_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ZonasScreen(),
    );
  }
}
