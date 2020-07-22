import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'my_app.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}
