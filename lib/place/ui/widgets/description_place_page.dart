import 'file:///D:/Udemy/flutter/app_trips/lib/widgets/button_purple_page.dart';
import 'file:///D:/Udemy/flutter/app_trips/lib/place/ui/widgets/estrellas_page.dart';
import 'package:flutter/material.dart';

const buttonText = 'Navigate';

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
        _crearEstrellas(),
      ],
    );
  }

  Container _crearEstrellas() {
    return Container(
      margin: EdgeInsets.only(
        top: 355.0,
      ),
      child: EstrellasPage(
        cantidadEstrellas: cantidadEstrellas,
      ),
    );
  }

  Container _crearTitulo() {
    return Container(
      margin: EdgeInsets.only(
        top: 353.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        nombreSitio,
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w600,
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
        _crearButtonNavigate()
      ],
    );
  }

  Container _crearButtonNavigate() {
    return Container(
        child: ButtonPurplePage(buttonText),
        alignment: Alignment.centerLeft,
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
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a),
        ),
      ),
      alignment: Alignment.bottomLeft,
    );
  }
}
