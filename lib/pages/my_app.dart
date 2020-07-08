import 'package:flutter/material.dart';

import 'description_place_page.dart';

class MyApp extends StatelessWidget {
  final String _texto =
      """Lorem Ipsum is simply dummy text of the printing and typesetting industry.
     Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley """;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Trips',
      debugShowCheckedModeBanner: false,
      home: DescriptionPlacePage(
        nombreSitio: 'Duwili Ella',
        cantidadEstrellas: 4.6,
        descripcionSitio: _texto,
      ),
    );
  }
}
