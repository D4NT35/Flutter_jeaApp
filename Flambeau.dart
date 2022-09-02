import 'package:flutter/material.dart';
import 'Etapes.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FlambeauItemWidget extends StatelessWidget {
  const FlambeauItemWidget({Key? key, required this.etape}) : super(key: key);
  final Etape etape;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/etape',
          arguments: etape,
        );
      },
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
                tag: "imageEtape${etape.title}",
                child: CachedNetworkImage(
                  imageUrl: etape.imageUrl,
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
                          etape.title,
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
