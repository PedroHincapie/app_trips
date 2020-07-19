import 'package:flutter/material.dart';

class GradieBackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1),
            ],
            begin: FractionalOffset(0.5, 0.0),
            end: FractionalOffset(1.0, 0.7),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp),
      ),
      child: Text(
        'Stan Lee',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }
}
