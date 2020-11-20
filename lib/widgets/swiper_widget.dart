import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:ornito/models/ave_model.dart';
import 'package:ornito/screens/detalles_screen.dart';

class SwiperWidget extends StatelessWidget {
  final List<Ave> lista;

  SwiperWidget({@required this.lista});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _swiper(context),
    );
  }

  Widget _swiper(context) {
    final screenSize = MediaQuery.of(context).size;
    return Swiper(
      itemWidth: screenSize.width * 0.7,
      itemHeight: screenSize.height * 0.5,
      layout: SwiperLayout.STACK,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Get.to(DetallesScreen(), arguments: lista[index]);
          },
          child: Hero(
            tag: lista[index].numFila,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: FadeInImage(
                placeholder: AssetImage('assets/images/birds.png'),
                image: NetworkImage(lista[index].getImgUrl()),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
      itemCount: lista.length,
      // pagination: new SwiperPagination(),
      // control: new SwiperControl(),
    );
  }
}
