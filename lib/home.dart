import 'package:flutter/material.dart';
import 'description_place.dart';
import 'header_appbar.dart';
import 'review_list.dart';


    class Home extends StatelessWidget {

      final String descriptionDummy = "Situada en la Isla Gengoro de terreno montañoso, disfruta"
          " una mezcla de rasgos japoneses y tropicales. "
          "Cuenta con una estación de policía, un banco, una escuela "
          "(donde no se estudia, sólo se asiste), un hospital, un zoológico, "
          "una cafetería, la famosa 'Coffe Pot', una barbería y otras tiendas comerciales; además de las viviendas. "
          "Su población fija es de 50 habitantes y otros tantos ocasionales. "
          "Poblado por humanos y otros seres humanoides (incluyendo la Luna y el Sol). "
          "También se pueden encontrar animales con características prehistóricas.";

      @override
      Widget build(BuildContext context) {
        return Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace("Aldea Pingüino", 4, descriptionDummy),
                ReviewList()
              ],
            ),
            HeaderAppBar()
          ],
        );
      }
    }
