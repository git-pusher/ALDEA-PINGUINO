import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/araleNorimaki.png", "Arale Norimaki", "942 reviews | 3614 fotos", "¡Qué onda!"),
        Review("assets/img/soren.jpg", "Soren Lorenzon", "189 reviews | 437 fotos", "Es un lugar maravilloso"),
        Review("assets/img/harold.jpg", "Harol", "32 reviews | 96 fotos", "Más o menos"),
        Review("assets/img/grumpyCat.jpg", "The Grumpy Cat", "182 reviews | 182 fotos", "Mhñe"),




    ],
    );
  }
}
