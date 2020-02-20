import 'package:flutter/material.dart';

class FloatingActionButtonFav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButton();
  }
}


class _FloatingActionButton extends State<FloatingActionButtonFav> {

  //bool press = true;
  bool favAdded = false;

  void onPressedFav(){


    setState(() {
    //favAdded = favAdded ?false :true;
    favAdded = !favAdded;
    });

    final contextScaffold = Scaffold.of(context);
    contextScaffold.removeCurrentSnackBar();
    contextScaffold.showSnackBar(SnackBar(
      content: this.favAdded ? Text("Agregado a favoritos :)") : Text("Quitada de Favoritos :("),
    ));



  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
          favAdded ? Icons.favorite : Icons.favorite_border,
          color: favAdded?
              Colors.white : Colors.white,
          //Icons.favorite_border
          //this.favAdded ? Icons.favorite : Icons.favorite_border
      ),
    );
  }

}