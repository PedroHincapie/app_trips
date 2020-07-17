import 'package:app_trips/scr/pages/header_app_bar_page.dart';
import 'package:app_trips/scr/pages/review_list_page.dart';
import 'package:flutter/material.dart';

import 'description_place_page.dart';

class HomePage extends StatelessWidget {
  final String _texto =
      """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley 
      of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,remaining essentially unchanged.
      It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              DescriptionPlacePage(
                nombreSitio: 'Duwili Ella',
                cantidadEstrellas: 3.8,
                descripcionSitio: _texto,
              ),
              ReviewListPage(),
            ],
          ),
          HeaderAppBarPage()
        ],
      ),
    );
  }
}
