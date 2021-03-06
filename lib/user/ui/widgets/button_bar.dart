import 'package:app_trips/user/blocs/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import 'circle_button.dart';

class ButtonsBar extends StatelessWidget {
  BlocUser _userBloc;

  @override
  Widget build(BuildContext context) {
    _userBloc = BlocProvider.of<BlocUser>(context);

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
    _userBloc.signOut();
  }
}
