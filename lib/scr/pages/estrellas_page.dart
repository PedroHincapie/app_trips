import 'package:flutter/material.dart';

class EstrellasPage extends StatelessWidget {
  final double cantidadEstrellas;
  final double tamano;

  EstrellasPage({@required this.cantidadEstrellas, this.tamano});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _obtenerLasEstrellas(),
    );
  }

  List<Widget> _obtenerLasEstrellas() {
    final int estrellasCompletas = cantidadEstrellas ~/ 1;
    final double estrellasMedias = cantidadEstrellas % 1;
    final List<Widget> listaEstrellas = [];

    for (int i = 0; i < estrellasCompletas; i++) {
      if (i < 5) {
        listaEstrellas.add(_crearStartRelleno());
      }
    }

    if (estrellasMedias > 0.5) {
      listaEstrellas.add(_crearMediaEstrella());
    }

    if (estrellasMedias < 0.5 && estrellasMedias > 0.1) {
      listaEstrellas.add(_crearStartSinRelleno());
    }

    return listaEstrellas;
  }

  Container _crearStartRelleno() {
    return Container(
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: tamano !=null ? tamano : 20.0 ,
      ),
    );
  }

  Container _crearStartSinRelleno() {
    return Container(
      child: Icon(
        Icons.star_border,
        size: tamano !=null ? tamano : 20.0 ,
      ),
    );
  }

  Container _crearMediaEstrella() {
    return Container(
      child: Icon(
        Icons.star_half,
        size: tamano !=null ? tamano : 20.0 ,
      ),
    );
  }
}
