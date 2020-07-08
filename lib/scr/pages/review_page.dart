import 'package:flutter/cupertino.dart';
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
    final containerFoto = Container(
      child: FadeInImage(
        placeholder: AssetImage('assets/images/jar-loading.gif'),
        image: NetworkImage(
            'https://vignette.wikia.nocookie.net/disney/images/5/53/Stan_Lee.jpg/revision/latest/top-crop/width/360/height/450?cb=20181204153103'),
        fadeInDuration: Duration(milliseconds: 200),
        fit: BoxFit.cover,
        width: 80.0,
        height: 80.0,
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        top: 60.0,
        left: 20.0,
        right: 20.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35.0),
        child: containerFoto,
      ),
    );
  }
}
