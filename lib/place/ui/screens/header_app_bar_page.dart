import 'file:///D:/Udemy/flutter/app_trips/lib/place/ui/widgets/card_image_list_page.dart';
import 'file:///D:/Udemy/flutter/app_trips/lib/widgets/gradiente_back_page.dart';
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
