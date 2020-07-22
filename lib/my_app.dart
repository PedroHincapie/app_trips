import 'package:flutter/material.dart';

import 'platzi_trips_cupertino.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Trips',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
      home: PlatziTripsCupertino(),
    );
  }
}
