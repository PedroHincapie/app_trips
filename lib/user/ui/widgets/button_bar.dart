import 'package:flutter/material.dart';

import 'circle_button.dart';

class ButtonsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 0.0,
          vertical: 10.0,
        ),
        child: Row(
          children: <Widget>[
            CircleButton(true, Icons.vpn_key, 20.0,
                Color.fromRGBO(255, 255, 255, 0.6), null),
            CircleButton(
              false,
              Icons.add,
              40.0,
              Color.fromRGBO(255, 255, 255, 1),
              null,
            ),
            CircleButton(
              true,
              Icons.exit_to_app,
              20.0,
              Color.fromRGBO(255, 255, 255, 0.6),
              _singOut,
            ),
          ],
        ));
  }

  void _singOut() {
    print('Pedro salio');
  }
}
