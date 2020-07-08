import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  static const String _rutaPlaceHolder = 'assets/images/jar-loading.gif';

  String urlImagen;
  String nombreUsuario;
  String detalles;
  String comentario;

  ReviewPage({
    @required this.urlImagen,
    @required this.nombreUsuario,
    @required this.detalles,
    @required this.comentario,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _crearFoto(),
        _crearDetalleReview(),
      ],
    );
  }

  Container _crearFoto() {
    final containerFoto = Container(
      child: FadeInImage(
        placeholder: AssetImage(_rutaPlaceHolder),
        image: NetworkImage(urlImagen),
        fadeInDuration: Duration(milliseconds: 200),
        fit: BoxFit.cover,
        width: 80.0,
        height: 80.0,
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        top: 60.0,
        left: 20.0,
        right: 20.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35.0),
        child: containerFoto,
      ),
    );
  }

  Column _crearDetalleReview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _crearNombreDelUsuario(),
      ],
    );
  }

  Widget _crearNombreDelUsuario() {
    return Container(
      child: Text(nombreUsuario),
      margin: EdgeInsets.only(
        left: 12.0,
      ),
    );
  }
}
