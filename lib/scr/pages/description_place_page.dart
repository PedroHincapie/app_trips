import 'package:app_trips/scr/pages/estrellas_page.dart';
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
        Container(
          margin: EdgeInsets.only(
            top: 322.0,
          ),
          child: EstrellasPage(
            cantidadEstrellas: cantidadEstrellas,
          ),
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
}
