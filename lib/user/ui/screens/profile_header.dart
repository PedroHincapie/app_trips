import 'package:app_trips/user/blocs/bloc_user.dart';
import 'package:app_trips/user/ui/widgets/button_bar.dart';
import 'package:app_trips/user/ui/widgets/user_info.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ProfileHeader extends StatelessWidget {
  BlocUser _userBloc;

  @override
  Widget build(BuildContext context) {
    _userBloc = BlocProvider.of<BlocUser>(context);

    return _generarStreamBuilder();
  }

  Widget _generarStreamBuilder() {
    return StreamBuilder(
        stream: _userBloc.streamFirebase,
        builder: (BuildContext context, AsyncSnapshot<FirebaseUser> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.none:
              return CircularProgressIndicator();
            case ConnectionState.active:
              return _showProfileDate(snapshot);
            case ConnectionState.done:
              return _showProfileDate(snapshot);
          }
        });
  }

  Widget _showProfileDate(AsyncSnapshot<FirebaseUser> snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      return Container();
    } else {
      return Container();
    }
  }

  Widget _demo() {
    final title = Text(
      'Profile',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0),
    );

    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              title,
            ],
          ),
          UserInfoW(
            'assets/images/ann.jpg',
            'Anahí Salgado',
            'anahi@platzi.com',
          ),
          ButtonsBar()
        ],
      ),
    );
  }
}
