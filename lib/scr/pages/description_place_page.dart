import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionPlacePage extends StatelessWidget {
  String nombreSitio;
  double cantidadEstrellas;
  String descripcionSitio;

  DescriptionPlacePage({
    @required this.nombreSitio,
    @required this.cantidadEstrellas,
    @required this.descripcionSitio,
  });

  @override
  Widget build(BuildContext context) {
    return _crearCuerpoApp();
  }

  Widget _crearTituloEstrellas() {
    return Row(
      children: <Widget>[
        _crearTitulo(),
        Row(
          children: _obtenerLasEstrellas(),
        )
      ],
    );
  }

  Container _crearTitulo() {
    return Container(
      margin: EdgeInsets.only(
        top: 320.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        nombreSitio,
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w900,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  Container _crearStartRelleno() {
    return Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );
  }

  Container _crearStartSinRelleno() {
    return Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
      ),
    );
  }

  Container _crearMediaEstrella() {
    return Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
      ),
    );
  }

  Column _crearCuerpoApp() {
    return Column(
      children: <Widget>[
        _crearTituloEstrellas(),
        _crearDescripcion(),
      ],
    );
  }

  Widget _crearDescripcion() {
    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descripcionSitio,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a),
        ),
      ),
      alignment: Alignment.bottomLeft,
    );
  }

  List<Widget> _obtenerLasEstrellas() {
    final int estrellasCompletas = cantidadEstrellas ~/ 1;
    final double estrellasMedias = cantidadEstrellas % 1;
    final List<Widget> listaEstrellas = [];

    for (int i = 0; i < estrellasCompletas; i++) {
      listaEstrellas.add(_crearStartRelleno());
    }

    if (estrellasMedias > 0.5) {
      listaEstrellas.add(_crearMediaEstrella());
    }

    if (estrellasMedias < 0.5) {
      listaEstrellas.add(_crearStartSinRelleno());
    }

    return listaEstrellas;
  }
}
