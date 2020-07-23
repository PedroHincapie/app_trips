import 'package:app_trips/user/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import 'platzi_trips_cupertino.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: BlocUser(),
      child: MaterialApp(
        title: 'App Trips',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Lato',
        ),
        home: PlatziTripsCupertino(),
      ),
    );
  }
}
