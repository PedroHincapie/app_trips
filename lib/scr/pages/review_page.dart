import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _crearFoto(),
      ],
    );
  }

  Container _crearFoto() {
    return Container(
      margin: EdgeInsets.only(
        top: 90.0,
        left: 20.0,
        right: 20.0,
      ),
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage('assets/images/Stan_Lee.jpg'),
        ),
      ),
    );
  }
}
