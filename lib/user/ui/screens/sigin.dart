import 'package:app_trips/widgets/gradient_back.dart';
import 'package:flutter/material.dart';

class Sigin extends StatefulWidget {
  @override
  _SiginState createState() => _SiginState();
}

class _SiginState extends State<Sigin> {
  @override
  Widget build(BuildContext context) {
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
            children: <Widget>[
              Text(
                'Welcome \n This is your travel APP',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
