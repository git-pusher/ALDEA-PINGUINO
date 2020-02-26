import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home.dart';
import 'search.dart';
import 'profile.dart';

class TripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            activeColor: Colors.indigo,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, ),

                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search,),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person,),
                  title: Text("")
              ),
            ]
        ),

        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => Home(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => Search(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => Profile(),
              );
              break;

          }

        },
      ),
    );
  }

}