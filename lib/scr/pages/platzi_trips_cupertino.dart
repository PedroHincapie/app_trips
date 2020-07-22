import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../place/ui/screens/home_trips.dart';
import '../../user/ui/screens/profile_trips.dart';
import '../../place/ui/screens/search_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  final List<Widget> widgetChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.white.withAlpha(50),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black26),
              activeIcon: Icon(Icons.home, color: Colors.indigo),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.search, color: Colors.indigo),
              icon: Icon(Icons.search, color: Colors.black26),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.person, color: Colors.indigo),
              icon: Icon(Icons.person, color: Colors.black26),
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) => widgetChildren[index],
          );
        },
      ),
    );
  }
}
