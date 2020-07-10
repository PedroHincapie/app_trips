import 'package:app_trips/scr/pages/review_page.dart';
import 'package:flutter/material.dart';

class ReviewListPage extends StatelessWidget {
  String urlImagen =
      'https://vignette.wikia.nocookie.net/disney/images/5/53/Stan_Lee.jpg/revision/latest/top-crop/width/360/height/450?cb=20181204153103';

  String nombreUsuario = 'Varuna Yasas';
  String detalles = '1 review 5 photos';
  String comentario = 'There is an amazing place Sri lanka';
  double cantidadEstrellas = 2.10;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ReviewPage(
            urlImagen: urlImagen,
            nombreUsuario: nombreUsuario,
            detalles: detalles,
            comentario: comentario,
            cantidadEstrellas: cantidadEstrellas),
        ReviewPage(
            urlImagen: urlImagen,
            nombreUsuario: nombreUsuario,
            detalles: detalles,
            comentario: comentario,
            cantidadEstrellas: cantidadEstrellas),
      ],
    );
  }
}
