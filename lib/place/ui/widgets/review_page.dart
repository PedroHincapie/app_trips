import 'file:///D:/Udemy/flutter/app_trips/lib/place/ui/widgets/estrellas_page.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  static const String _rutaPlaceHolder = 'assets/images/jar-loading.gif';

  String urlImagen;
  String nombreUsuario;
  String detalles;
  String comentario;
  double cantidadEstrellas;

  ReviewPage({
    @required this.urlImagen,
    @required this.nombreUsuario,
    @required this.detalles,
    @required this.comentario,
    @required this.cantidadEstrellas,
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
        width: 90.0,
        height: 90.0,
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        top: 60.0,
        left: 20.0,
        right: 20.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60.0),
        child: containerFoto,
      ),
    );
  }

  Column _crearDetalleReview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _crearNombreDelUsuario(),
        _crearInformacionUsuario(),
        _crearComentarioUsuario()
      ],
    );
  }

  Widget _crearNombreDelUsuario() {
    return Container(
      child: Text(
        nombreUsuario,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17.0),
      ),
      margin: EdgeInsets.only(
        top: 60.0,
        left: 12.0,
      ),
    );
  }

  Widget _crearInformacionUsuario() {
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            detalles,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 13.0,
              color: Color(0xFFa3A5a7),
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          EstrellasPage(
            cantidadEstrellas: cantidadEstrellas,
            tamano: 16.0,
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 12.0, top: 4.0),
    );
  }

  Widget _crearComentarioUsuario() {
    return Container(
      child: Text(
        comentario,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
      margin: EdgeInsets.only(
        left: 12.0,
        top: 4.0,
      ),
    );
  }
}
