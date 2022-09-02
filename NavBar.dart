import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.orangeAccent, Colors.redAccent],
              ),
                ),
            child: Container(
              child: Column(
                children: [
                  Material(
                   borderRadius: BorderRadius.all(Radius.circular(30)),
                    child:Padding(padding: EdgeInsets.all(7),
                    child: Image.asset(
                      'images/jea.png',
                   width:73.67,
                      height: 76,

                    ),),
                  ),
                    Padding(
                        padding: EdgeInsets.only(top: 2),
                    child: Text('Brillons brillons Bien',
                      style: GoogleFonts.robotoMono(
                        textStyle: TextStyle(
                            color: Colors.white,
                            ),
                      ),
                    ),
                    ),
                   Text('Jeunesse évangélique Africaine',
                    style: GoogleFonts.robotoMono(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),


                ],
              ),

            ),

          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Page d'acceuil"),
            onTap: ()=>print('rien'),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text("À propos"),
            onTap: ()=>print('rien'),
          ),
          const Divider(),
          ListTile(
            title: Text('Partage et avis', style: TextStyle(
                color: Colors.grey[500]
            ) ,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text("Partager l'appli"),
            onTap: ()=>print('rien'),
          ),
          ListTile(
            leading: const Icon(Icons.comment),
            title: const Text('Commentaires et avis'),
            onTap: ()=>print('rien'),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Paramètres'),
            onTap: ()=>print('rien'),
          ),

          const Divider(),
          ListTile(
            title: Text('Contribuer',style: TextStyle(
                color: Colors.grey[500]
            ) ,
            ),
          ),

          ListTile(
            leading: const Icon(Icons.attach_money),
            title: const Text('Faire un don'),
            onTap: ()=>print('rien'),
          ),
          const Divider(),
          ListTile(
            title: Text('Quiter',style: TextStyle(
                color: Colors.grey[500]
            ) ,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Quiter'),
            onTap: ()=>print('rien'),
          ),
        ],

      ),
    );
  }
}
