import 'package:app_trips/place/ui/widgets/description_place.dart';
import 'package:app_trips/place/ui/widgets/description_place_page.dart';
import 'package:app_trips/place/ui/widgets/review_list.dart';
import 'package:flutter/material.dart';

import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  String descriptionDummy =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
//            DescriptionPlace("Cartagena", 4, descriptionDummy),
            DescriptionPlacePage(
              nombreSitio: 'Momteria',
              cantidadEstrellas: 4.0,
              descripcionSitio: descriptionDummy,
            ),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}
