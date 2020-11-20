import 'package:ornito/models/ave_model.dart';

class Aves {
  List<Ave> lista = new List();

  Aves.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    jsonList.forEach((item) {
      final ave = Ave.fromJson(item);
      lista.add(ave);
    });
  }
}
