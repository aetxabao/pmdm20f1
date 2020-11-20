import 'dart:convert';

Ave aveFromJson(String str) => Ave.fromJson(json.decode(str));

String aveToJson(Ave data) => json.encode(data.toJson());

class Ave {
  final _url = "https://www.turismo.navarra.es/imgs/rrtt/";

//"https://www.turismo.navarra.es/imgs/rrtt/05/01/11/00/3824FotoTH1.jpg";
  getImgUrl() {
    return _url + this.path + this.imgFichero;
  }

  Ave({
    this.numFila,
    this.codRecurso,
    this.codCategoria,
    this.idCategoria,
    this.idRecursoCategoria,
    this.nombreRecurso,
    this.georrX,
    this.georrY,
    this.observacion,
    this.caracter,
    this.diplomacompromiso,
    this.urlNombreBuscador,
    this.urlNombreCast,
    this.nombre,
    this.path,
    this.imgFichero,
    this.descripImpresion,
    this.zonas,
  });

  String numFila;
  String codRecurso;
  String codCategoria;
  String idCategoria;
  String idRecursoCategoria;
  String nombreRecurso;
  String georrX;
  String georrY;
  String observacion;
  String caracter;
  String diplomacompromiso;
  String urlNombreBuscador;
  String urlNombreCast;
  String nombre;
  String path;
  String imgFichero;
  String descripImpresion;
  String zonas;

  factory Ave.fromJson(Map<String, dynamic> json) => Ave(
        numFila: json["num_fila"],
        codRecurso: json["CodRecurso"],
        codCategoria: json["CodCategoria"],
        idCategoria: json["IdCategoria"],
        idRecursoCategoria: json["IdRecursoCategoria"],
        nombreRecurso: json["NombreRecurso"],
        georrX: json["GEORR_X"],
        georrY: json["GEORR_Y"],
        observacion: json["Observacion"],
        caracter: json["Caracter"],
        diplomacompromiso: json["DIPLOMACOMPROMISO"],
        urlNombreBuscador: json["URLNombreBuscador"],
        urlNombreCast: json["URLNombreCast"],
        nombre: json["Nombre"],
        path: json["Path"],
        imgFichero: json["ImgFichero"],
        descripImpresion: json["DescripImpresion"],
        zonas: json["Zonas"] == null ? "Todas" : json["Zonas"],
      );

  Map<String, dynamic> toJson() => {
        "num_fila": numFila,
        "CodRecurso": codRecurso,
        "CodCategoria": codCategoria,
        "IdCategoria": idCategoria,
        "IdRecursoCategoria": idRecursoCategoria,
        "NombreRecurso": nombreRecurso,
        "GEORR_X": georrX,
        "GEORR_Y": georrY,
        "Observacion": observacion,
        "Caracter": caracter,
        "DIPLOMACOMPROMISO": diplomacompromiso,
        "URLNombreBuscador": urlNombreBuscador,
        "URLNombreCast": urlNombreCast,
        "Nombre": nombre,
        "Path": path,
        "ImgFichero": imgFichero,
        "DescripImpresion": descripImpresion,
        "Zonas": zonas,
      };
}
