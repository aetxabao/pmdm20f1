import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ornito/providers/aves_provider.dart';
import 'aves_screen.dart';

// ignore: must_be_immutable
class ZonasScreen extends StatelessWidget {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Zonas'),
        ),
        body: ListView(
          children: _listaElementos(avesProvider.listaZonas()),
        ));
  }

  List<Widget> _listaElementos(List<String> data) {
    final List<Widget> lst = [];
    data.forEach((element) {
      final w = ListTile(
        title: Text(element),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          box.write('zonas', element);
          Get.to(AvesScreen());
        },
      );
      lst.add(w);
      lst.add(Divider());
    });
    return lst;
  }
}
