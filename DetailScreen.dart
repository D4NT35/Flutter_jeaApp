import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_application_1/Etapes.dart';

class EtapeScreen extends StatelessWidget {
  const EtapeScreen({Key? key, required this.etape}) : super(key: key);
  final Etape etape;

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget TitleSection = Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            etape.title,
            // ignore: prefer_const_constructors
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );



    Widget observateurSection = Container(
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





    return Scaffold(
      appBar: AppBar(
        title: const Text("JEA App"),
      ),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: EdgeInsets.all(24),
            elevation: 16,
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
                width: 800,
                height: 240,
                fit: BoxFit.cover,
              ),
            ),
          ),
          TitleSection,
          observateurSection,
        ],
      ),
    );
  }
}

Column _buildButtonColumn(String label) {
  return Column(
    //crossAxisAlignment: CrossAxisAlignment.start,
    //mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: Text(label),
      )
    ],
  );
}
