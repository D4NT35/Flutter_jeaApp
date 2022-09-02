import 'package:flutter/material.dart';
import 'package:flutter_application_1/NavBar.dart';
import 'Etapes.dart';
import 'Membre.dart';
import 'NavBar.dart';
import 'Flambeau.dart';
import 'Membres.dart';



class MembreDetail extends StatelessWidget {
  MembreDetail({Key? key}) : super(key: key);
  final List<Membre> membres = [
    Membre(
      "Devenir Membre",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Membre(
      "Observateur",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Membre(
      "Explorateur",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Membre(
      "Pionnier",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Membre(
      "Guide",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Membre(
      "pizza faciel2",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Membre(
      "pizza faciel3",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Membre(
      "pizza faciel4",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Membre(
      "pizza faciel5",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Membre(
      "pizza faciel6",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Membre(
      "pizza faciel7",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
    Membre(
      "pizza faciel8",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/06/25/87/cheval-blanc-randheli.jpg?w=1200&h=-1&s=1",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemCount: membres.length,
      itemBuilder: (context, index) {
        return
          Container(

              child: MembreItemWidget(membre: membres[index]));
        
      },
    );
  }
}
