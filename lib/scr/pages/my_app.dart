import 'package:app_trips/scr/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Trips',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
