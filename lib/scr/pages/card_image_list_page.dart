import 'package:app_trips/scr/pages/card_image_page.dart';
import 'package:flutter/material.dart';

class CardImageListPage extends StatelessWidget {
  String _urlImagen = 'assets/images/cap.jpg';
  String _urlImagen2 = 'assets/images/hulk.jpg';
  String _urlImagen3 = 'assets/images/spider.jpg';
  String _urlImagen4 = 'assets/images/iron.jpg';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImagePage(_urlImagen),
          CardImagePage(_urlImagen2),
          CardImagePage(_urlImagen3),
          CardImagePage(_urlImagen4),
        ],
      ),
    );
  }
}
