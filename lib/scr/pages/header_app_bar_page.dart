import 'package:app_trips/scr/pages/card_image_list_page.dart';
import 'package:app_trips/scr/pages/gradiente_back_page.dart';
import 'package:flutter/material.dart';

class HeaderAppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradieBackPage(),
        CardImageListPage(),
      ],
    );
  }
}
