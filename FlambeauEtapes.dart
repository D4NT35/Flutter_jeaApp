import 'package:flutter/material.dart';
import 'package:flutter_application_1/NavBar.dart';
import 'Etapes.dart';
import 'NavBar.dart';
import 'Flambeau.dart';



class FlambeauEtapes extends StatelessWidget {
  FlambeauEtapes({Key? key}) : super(key: key);
  final List<Etape> etapes = [
    Etape(
      "Devenir Membre",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Etape(
      "Observateur",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Etape(
      "Explorateur",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Etape(
      "Pionnier",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Etape(
      "Guide",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Etape(
      "pizza faciel2",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Etape(
      "pizza faciel3",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Etape(
      "pizza faciel4",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Etape(
      "pizza faciel5",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Etape(
      "pizza faciel6",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Etape(
      "pizza faciel7",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Etape(
      "pizza faciel8",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemCount: etapes.length,
      itemBuilder: (context, index) {
        return
          Container(

              child: FlambeauItemWidget(etape: etapes[index]));
      },
    );
  }
}
