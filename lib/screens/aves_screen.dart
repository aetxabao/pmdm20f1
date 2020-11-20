import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ornito/providers/aves_provider.dart';
import 'package:ornito/widgets/swiper_widget.dart';

// ignore: must_be_immutable
class AvesScreen extends StatelessWidget {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(box.read('zonas')),
      ),
      body: _swiper(),
    );
  }

  Widget _swiper() {
    return FutureBuilder(
      future: avesProvider.cargarAvesFiltradas(box.read('zonas')),
      initialData: [],
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return SwiperWidget(lista: snapshot.data);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
