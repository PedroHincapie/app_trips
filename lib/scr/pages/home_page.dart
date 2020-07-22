import 'package:app_trips/scr/pages/header_app_bar_page.dart';
import 'package:app_trips/scr/pages/review_list_page.dart';
import 'package:flutter/material.dart';

import 'description_place_page.dart';

class HomePage extends StatelessWidget {
  final String _texto =
      '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,remaining essentially unchanged.''';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlacePage(
              nombreSitio: 'Duwili Ella',
              cantidadEstrellas: 5.0,
              descripcionSitio: _texto,
            ),
            ReviewListPage(),
          ],
        ),
        HeaderAppBarPage()
      ],
    );
  }
}
