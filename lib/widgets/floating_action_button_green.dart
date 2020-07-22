import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _isFavoritos = false;

  void onPressedFav() {
    setState(() {
      _isFavoritos = !_isFavoritos;

      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("Navegando"),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: _isFavoritos ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
    );
  }
}
