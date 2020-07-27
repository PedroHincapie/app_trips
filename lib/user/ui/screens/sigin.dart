import 'package:app_trips/user/blocs/bloc_user.dart';
import 'package:app_trips/widgets/button_green.dart';
import 'package:app_trips/widgets/gradient_back.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Sigin extends StatefulWidget {
  @override
  _SiginState createState() => _SiginState();
}

class _SiginState extends State<Sigin> {
  BlocUser _user;

  @override
  Widget build(BuildContext context) {
    _user = BlocProvider.of(context);

    return _signInGoogleUI();
  }

  Widget _signInGoogleUI() {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack(
            '',
            height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome \n This is your travel APP',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              ButtonGreen(
                text: 'G Login with Gmail',
                onPressed: () {
                  _user.signIn().then((value) => print(value));
                },
                width: 300.0,
                height: 50.0,
              )
            ],
          )
        ],
      ),
    );
  }
}
