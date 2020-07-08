import 'package:app_trips/scr/pages/review_page.dart';
import 'package:flutter/material.dart';

import 'description_place_page.dart';

class HomePage extends StatelessWidget {
  final String _texto =
      """Lorem Ipsum is simply dummy text of the printing and typesetting industry.
     Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley """;

  String urlImagen =
      'https://vignette.wikia.nocookie.net/disney/images/5/53/Stan_Lee.jpg/revision/latest/top-crop/width/360/height/450?cb=20181204153103';

  String nombreUsuario = 'Varuna Yasas';
  String detalles = '1 review 5 photos';
  String comentario = 'There is an amazing place Sri lanka';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
      ),
      body: Column(
        children: <Widget>[
          DescriptionPlacePage(
            nombreSitio: 'Duwili Ella',
            cantidadEstrellas: 4.6,
            descripcionSitio: _texto,
          ),
          ReviewPage(
            comentario: comentario,
            detalles: detalles,
            nombreUsuario: nombreUsuario,
            urlImagen: urlImagen,
          )
        ],
      ),
    );
  }
}
