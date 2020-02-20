import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';
import 'profile.dart';

class Trips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Trips();
  }

}

class _Trips extends State<Trips> {

  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    Home(),
    Search(),
    Profile(),
  ];


  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: widgetsChildren[indexTap],
      //appBar: AppBar(
      //centerTitle: true,
      //title: Text("Reto #2"),
      //),
      //body: new DescriptionPlace("Aldea Pingüino", 4, descriptionDummy),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple,
          ),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(""),
            ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text(""),
              ),
             ]
          ),
        ),

    );
  }
}
