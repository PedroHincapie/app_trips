import 'package:app_trips/scr/pages/floating_action_button_green_page.dart';
import 'package:flutter/material.dart';

class CardImagePage extends StatelessWidget {
  String _urlImagen = 'assets/images/cap.jpg';

  CardImagePage(this._urlImagen);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 400.0,
      width: 250.0,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black87,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          ),
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(_urlImagen),
        ),
      ),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreenPage(),
      ],
    );
  }
}
