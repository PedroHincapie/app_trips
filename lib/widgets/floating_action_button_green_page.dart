import 'package:flutter/material.dart';

class FloatingActionButtonGreenPage extends StatefulWidget {
  @override
  _FloatingActionButtonGreenPageState createState() =>
      _FloatingActionButtonGreenPageState();
}

class _FloatingActionButtonGreenPageState
    extends State<FloatingActionButtonGreenPage> {
  bool _agregarFavorito = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: _onPreseedFav,
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      child:
          _agregarFavorito ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
    );
  }

  void _onPreseedFav() => setState(() {
        _agregarFavorito = true;
      });
}
