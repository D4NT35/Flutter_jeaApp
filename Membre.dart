import 'package:flutter/material.dart';
import 'Etapes.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'Membres.dart';

class MembreItemWidget extends StatelessWidget {
  const MembreItemWidget({Key? key, required this.membre}) : super(key: key);
  final Membre membre;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.all(8),
        elevation: 8,
        child: Row(
          children: [
            Card(
              margin: EdgeInsets.all(8),
              elevation: 8,
              child: Hero(
                tag: "imageMembre${membre.title}",
                child: CachedNetworkImage(
                  imageUrl: membre.imageUrl,
                  // ignore: prefer_const_constructors
                  placeholder: (context, url) => Center(
                    child: const CircularProgressIndicator(),
                  ),
                  // ignore: prefer_const_constructors
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  width: 100,
                  height: 75,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          membre.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
