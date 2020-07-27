import 'package:app_trips/user/blocs/bloc_user.dart';
import 'package:app_trips/user/ui/screens/sigin.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

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
        home: Sigin(),
      ),
    );
  }
}
