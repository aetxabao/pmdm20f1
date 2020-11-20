import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:ornito/models/ave_model.dart';
import 'package:ornito/models/aves_model.dart';

class AvesProvider {
  String zonas;
  String nombre;

  List<Ave> lstAves = [];
  List<Ave> lstAvesFiltrada = [];
  List<String> lstZonas = [
    'Todas',
    'Montaña',
    'Pamplona',
    'Zona media',
    'Ribera',
  ];

  List<String> listaZonas() {
    return lstZonas;
  }

  Future<List<Ave>> cargarAves() async {
    final data = await rootBundle.loadString('assets/data/ornito.json');
    final decodedData = json.decode(data);
    final openData = decodedData['OpenData'];
    final openDataRow = openData['OpenDataRow'];
    Aves aves = Aves.fromJsonList(openDataRow);
    lstAves = aves.lista;
    return lstAves;
  }

  Future<List<Ave>> cargarAvesFiltradas(String z) async {
    if (z == zonas) {
      return lstAvesFiltrada;
    } else {
      zonas = z;
    }
    if (lstAves.length == 0) {
      await cargarAves();
    }
    lstAvesFiltrada = [];
    lstAves.forEach((ave) {
      if (ave.zonas.trim().toLowerCase().contains(z.trim().toLowerCase())) {
        lstAvesFiltrada.add(ave);
      }
    });
    await new Future.delayed(const Duration(seconds: 1));
    return lstAvesFiltrada;
  }
}

final avesProvider = new AvesProvider();
