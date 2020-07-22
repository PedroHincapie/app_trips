import 'file:///D:/Udemy/flutter/app_trips/lib/place/ui/widgets/review_page.dart';
import 'package:flutter/material.dart';

class ReviewListPage extends StatelessWidget {
  final urlImagen =
      'https://vignette.wikia.nocookie.net/disney/images/5/53/Stan_Lee.jpg/revision/latest/top-crop/width/360/height/450?cb=20181204153103';

  final urlImagen2 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT-u1BHaJzPFxfhmNuA1Qo6jXpCfJITKNeOxw&usqp=CAU';
  final urlImagen3 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSYU69duIIrQrD_S0Z6J2dJZXjfJXAiy_cKog&usqp=CAU';

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
            urlImagen: urlImagen2,
            nombreUsuario: nombreUsuario,
            detalles: detalles,
            comentario: comentario,
            cantidadEstrellas: cantidadEstrellas),
        ReviewPage(
            urlImagen: urlImagen3,
            nombreUsuario: nombreUsuario,
            detalles: detalles,
            comentario: comentario,
            cantidadEstrellas: cantidadEstrellas),
//        ReviewPage(
//            urlImagen: urlImagen,
//            nombreUsuario: nombreUsuario,
//            detalles: detalles,
//            comentario: comentario,
//            cantidadEstrellas: cantidadEstrellas),
//        ReviewPage(
//            urlImagen: urlImagen2,
//            nombreUsuario: nombreUsuario,
//            detalles: detalles,
//            comentario: comentario,
//            cantidadEstrellas: cantidadEstrellas),
//        ReviewPage(
//            urlImagen: urlImagen3,
//            nombreUsuario: nombreUsuario,
//            detalles: detalles,
//            comentario: comentario,
//            cantidadEstrellas: cantidadEstrellas),
      ],
    );
  }
}
